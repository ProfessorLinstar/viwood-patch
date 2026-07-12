.class public Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerCallbackImpl;
.super Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;
.source "LocationTimeZoneProviderControllerCallbackImpl.java"


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V

    return-void
.end method


# virtual methods
.method public sendEvent(Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 40
    const-class p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    .line 41
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    .line 42
    invoke-interface {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;->handleLocationAlgorithmEvent(Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V

    return-void
.end method
