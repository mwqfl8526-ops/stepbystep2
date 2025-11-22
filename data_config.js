// data_config.js
import { db } from "./firebase_init.js";
import { collection, addDoc, getDocs, doc, updateDoc, deleteDoc } from "firebase/firestore";

// Keys for collections
export const KEYS = {
    JOB_APPLICATIONS: 'jobApplications',
    HOTELS: 'hotels',
    RESTAURANTS: 'restaurants',
    STORES: 'stores',
    COMMENTS: 'comments',
    ASSISTANTS_GUIDES: 'assistantsGuides',
    ASSISTANTS_COMPANIONS: 'assistantsCompanions',
    ASSISTANTS_DRIVERS: 'assistantsDrivers',
    CHATS: 'chats',
    TICKET_CODES: 'ticketCodes'
};

// Save a new place (hotel, restaurant, store)
export async function savePlace(collectionKey, placeData) {
    placeData.createdAt = new Date();
    try {
        const docRef = await addDoc(collection(db, collectionKey), placeData);
        return docRef.id;
    } catch (e) {
        console.error("Error adding place: ", e);
        return null;
    }
}

// Get all places from a collection
export async function getPlaces(collectionKey) {
    const querySnapshot = await getDocs(collection(db, collectionKey));
    const list = [];
    querySnapshot.forEach(doc => {
        list.push({ id: doc.id, ...doc.data() });
    });
    return list;
}

// Update place data
export async function updatePlace(collectionKey, docId, updateData) {
    try {
        await updateDoc(doc(db, collectionKey, docId), updateData);
        return true;
    } catch (e) {
        console.error("Error updating place:", e);
        return false;
    }
}

// Delete place
export async function deletePlace(collectionKey, docId) {
    try {
        await deleteDoc(doc(db, collectionKey, docId));
        return true;
    } catch (e) {
        console.error("Error deleting place:", e);
        return false;
    }
}