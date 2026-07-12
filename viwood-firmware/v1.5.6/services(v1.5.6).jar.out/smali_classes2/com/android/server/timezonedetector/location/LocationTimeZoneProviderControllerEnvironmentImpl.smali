.class public Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;
.super Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;
.source "LocationTimeZoneProviderControllerEnvironmentImpl.java"


# instance fields
.field public final mConfigurationInternalChangeListener:Lcom/android/server/timezonedetector/StateChangeListener;

.field public final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;


# direct methods
.method public static synthetic $r8$lambda$7A0T2SYrfZ-50JtnkrKtzz_qer0(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->lambda$new$0(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V

    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 47
    new-instance p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mConfigurationInternalChangeListener:Lcom/android/server/timezonedetector/StateChangeListener;

    .line 49
    invoke-interface {p2, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->addConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/StateChangeListener;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mConfigurationInternalChangeListener:Lcom/android/server/timezonedetector/StateChangeListener;

    invoke-interface {v0, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->removeConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/StateChangeListener;)V

    return-void
.end method

.method public elapsedRealtimeMillis()J
    .locals 2

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object p0

    return-object p0
.end method

.method public getProviderEventFilteringAgeThreshold()Ljava/time/Duration;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getLocationTimeZoneProviderEventFilteringAgeThreshold()Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public getProviderInitializationTimeout()Ljava/time/Duration;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getLocationTimeZoneProviderInitializationTimeout()Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public getProviderInitializationTimeoutFuzz()Ljava/time/Duration;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getLocationTimeZoneProviderInitializationTimeoutFuzz()Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public getUncertaintyDelay()Ljava/time/Duration;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getLocationTimeZoneUncertaintyDelay()Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$new$0(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V
    .locals 1

    .line 48
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V

    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->post(Ljava/lang/Runnable;)V

    return-void
.end method
