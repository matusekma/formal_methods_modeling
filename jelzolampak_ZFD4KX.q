//This file was generated from (Commercial) UPPAAL 4.0.15 rev. CB6BB307F6F681CB, November 2019

/*

*/
Light1.Yellow --> Light1.Red

/*
A m\u00e1sodlagos jelz\u0151l\u00e1mpa el\u00e9rheti a villog\u00f3 \u00e1llapot azon f\u00e1zis\u00e1t, amelyben egyik l\u00e1mp\u00e1ja sem vil\u00e1g\u00edt, \u00fagy,
hogy z\u00f6lden vil\u00e1g\u00edt\u00f3 \u00e1llapotban j\u00f6tt a megszak\u00edt\u00e1s.
*/
E<> (Light1.Green && Light1.interruptfrom == 2)

/*
Nincs olyan \u00e1llapota a rendszernek, amelyben az egyik l\u00e1mpa villog\u00f3, a m\u00e1sik norm\u00e1l \u00fczemm\u00f3dban van.
*/
A[] not ((Light0.Green or Light0.Red or Light0.Yellow) and (Light1.Blink or Light1.No_Blink) )

/*
Az els\u0151dleges \u00e9s m\u00e1sodlagos jelz\u0151l\u00e1mpa sosem vil\u00e1g\u00edt egyszerre z\u00f6lden. (Ha az egyik z\u00f6lden vil\u00e1g\u00edt, a
m\u00e1sik nem vil\u00e1g\u00edt z\u00f6lden.)
*/
A[] not (Light0.Green and Light1.Green)

/*
A modellben nincs holtpont (deadlock).
*/
A[] not deadlock
