.class public final Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;
.super Ljava/lang/Object;
.source "TimeZoneProviderRequest.java"


# static fields
.field public static final STOP_UPDATES:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;


# instance fields
.field public final mEventFilteringAgeThreshold:Ljava/time/Duration;

.field public final mInitializationTimeout:Ljava/time/Duration;

.field public final mSendUpdates:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;-><init>(ZLjava/time/Duration;Ljava/time/Duration;)V

    sput-object v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->STOP_UPDATES:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    return-void
.end method

.method public constructor <init>(ZLjava/time/Duration;Ljava/time/Duration;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mSendUpdates:Z

    .line 49
    iput-object p2, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mInitializationTimeout:Ljava/time/Duration;

    .line 50
    iput-object p3, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mEventFilteringAgeThreshold:Ljava/time/Duration;

    return-void
.end method

.method public static createStartUpdatesRequest(Ljava/time/Duration;Ljava/time/Duration;)Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;
    .locals 2

    .line 57
    new-instance v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;-><init>(ZLjava/time/Duration;Ljava/time/Duration;)V

    return-object v0
.end method

.method public static createStopUpdatesRequest()Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;
    .locals 1

    .line 64
    sget-object v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->STOP_UPDATES:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    if-eq v3, v2, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    check-cast p1, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 106
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mSendUpdates:Z

    iget-boolean v3, p1, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mSendUpdates:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mInitializationTimeout:Ljava/time/Duration;

    iget-object v3, p1, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mInitializationTimeout:Ljava/time/Duration;

    .line 107
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mEventFilteringAgeThreshold:Ljava/time/Duration;

    iget-object p1, p1, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mEventFilteringAgeThreshold:Ljava/time/Duration;

    .line 108
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getEventFilteringAgeThreshold()Ljava/time/Duration;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mEventFilteringAgeThreshold:Ljava/time/Duration;

    return-object p0
.end method

.method public getInitializationTimeout()Ljava/time/Duration;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mInitializationTimeout:Ljava/time/Duration;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 113
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mSendUpdates:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mInitializationTimeout:Ljava/time/Duration;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mEventFilteringAgeThreshold:Ljava/time/Duration;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public sendUpdates()Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mSendUpdates:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneProviderRequest{mSendUpdates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mSendUpdates:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInitializationTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mInitializationTimeout:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEventFilteringAgeThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mEventFilteringAgeThreshold:Ljava/time/Duration;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
