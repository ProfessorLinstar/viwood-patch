.class public abstract Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;
.super Ljava/lang/Object;
.source "LocationTimeZoneProviderController.java"


# instance fields
.field public final mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V
    .locals 0

    .line 936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 937
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    return-void
.end method


# virtual methods
.method public abstract sendEvent(Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V
.end method
