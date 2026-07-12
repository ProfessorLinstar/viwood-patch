.class public final Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;
.super Ljava/lang/Object;
.source "LocationTimeZoneManagerServiceState.java"


# instance fields
.field public mControllerState:Ljava/lang/String;

.field public mControllerStates:Ljava/util/List;

.field public mLastEvent:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

.field public mPrimaryProviderStates:Ljava/util/List;

.field public mSecondaryProviderStates:Ljava/util/List;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmControllerState(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mControllerState:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmControllerStates(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mControllerStates:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastEvent(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)Lcom/android/server/timezonedetector/LocationAlgorithmEvent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mLastEvent:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrimaryProviderStates(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mPrimaryProviderStates:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecondaryProviderStates(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mSecondaryProviderStates:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    .locals 1

    .line 124
    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)V

    return-object v0
.end method

.method public setControllerState(Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mControllerState:Ljava/lang/String;

    return-object p0
.end method

.method public setLastEvent(Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;
    .locals 0

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mLastEvent:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    return-object p0
.end method

.method public setPrimaryProviderStateChanges(Ljava/util/List;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;
    .locals 1

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mPrimaryProviderStates:Ljava/util/List;

    return-object p0
.end method

.method public setSecondaryProviderStateChanges(Ljava/util/List;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;
    .locals 1

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mSecondaryProviderStates:Ljava/util/List;

    return-object p0
.end method

.method public setStateChanges(Ljava/util/List;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;
    .locals 1

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mControllerStates:Ljava/util/List;

    return-object p0
.end method
