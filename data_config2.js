// data_config2.js
import { db } from "./firebase_init.js";
import { collection, addDoc, getDocs, doc, updateDoc, deleteDoc } from "firebase/firestore";

// Collections for hotels, restaurants, stores, bookings, comments
export const KEYS = {
    HOTELS: 'hotels',
    RESTAURANTS: 'restaurants',
    STORES: 'stores',
    BOOKINGS: 'bookings',
    COMMENTS: 'comments'
};

// Save a new item (hotel/restaurant/store)
export async function saveContentItem(collectionKey, itemData) {
    itemData.createdAt = new Date();
    try {
        const docRef = await addDoc(collection(db, collectionKey), itemData);
        return docRef.id;
    } catch(e) {
        console.error("Error saving item:", e);
        return null;
    }
}

// Save a comment for a place
export async function saveComment(placeCollection, placeId, commentData) {
    const commentDocId = `${placeCollection}_${placeId}`;
    commentData.createdAt = new Date();
    try {
        const docRef = await addDoc(collection(db, "comments"), {
            placeCollection, placeId, ...commentData
        });
        return docRef.id;
    } catch(e) {
        console.error("Error saving comment:", e);
        return null;
    }
}

// Get comments for a place
export async function getComments(placeCollection, placeId) {
    const querySnapshot = await getDocs(collection(db, "comments"));
    const list = [];
    querySnapshot.forEach(doc => {
        const data = doc.data();
        if (data.placeCollection === placeCollection && data.placeId === placeId) {
            list.push({ id: doc.id, ...data });
        }
    });
    return list;
}

// Load all data (hotels, restaurants, stores)
export async function loadData() {
    const data = {};
    for (const key of [KEYS.HOTELS, KEYS.RESTAURANTS, KEYS.STORES]) {
        data[key] = await getDocs(collection(db, key)).then(snapshot => {
            const list = [];
            snapshot.forEach(doc => list.push({ id: doc.id, ...doc.data() }));
            return list;
        });
    }
    return data;
}