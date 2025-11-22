// firebase_init.js
import { initializeApp } from "https://www.gstatic.com/firebasejs/10.7.1/firebase-app.js";
import { 
    getFirestore, 
    collection, 
    addDoc, 
    getDocs, 
    doc, 
    updateDoc, 
    deleteDoc 
} from "https://www.gstatic.com/firebasejs/10.7.1/firebase-firestore.js";

// Firebase Config
const firebaseConfig = {
  apiKey: "AIzaSyDpVqFWJfB4rA2-NA4QIl1w07e2LFQaYic",
  authDomain: "tourguideapp-313c1.firebaseapp.com",
  databaseURL: "https://tourguideapp-313c1-default-rtdb.firebaseio.com",
  projectId: "tourguideapp-313c1",
  storageBucket: "tourguideapp-313c1.firebasestorage.app",
  messagingSenderId: "1036127588385",
  appId: "1:1036127588385:web:d144dba8f70fe094395360"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
export const db = getFirestore(app);