.class public Lcom/android/server/timezonedetector/location/ZoneInfoDbTimeZoneProviderEventPreProcessor;
.super Ljava/lang/Object;
.source "ZoneInfoDbTimeZoneProviderEventPreProcessor.java"

# interfaces
.implements Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasInvalidZones(Landroid/service/timezone/TimeZoneProviderEvent;)Z
    .locals 3

    .line 76
    invoke-virtual {p0}, Landroid/service/timezone/TimeZoneProviderEvent;->getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderSuggestion;->getTimeZoneIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/i18n/timezone/ZoneInfoDb;->hasTimeZone(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has unsupported zone("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->infoLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public preProcess(Landroid/service/timezone/TimeZoneProviderEvent;)Landroid/service/timezone/TimeZoneProviderEvent;
    .locals 2

    .line 41
    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/timezone/TimeZoneProviderSuggestion;->getTimeZoneIds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    invoke-static {p1}, Lcom/android/server/timezonedetector/location/ZoneInfoDbTimeZoneProviderEventPreProcessor;->hasInvalidZones(Landroid/service/timezone/TimeZoneProviderEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 59
    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getTimeZoneProviderStatus()Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 62
    new-instance v0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;

    invoke-direct {v0, p0}, Landroid/service/timezone/TimeZoneProviderStatus$Builder;-><init>(Landroid/service/timezone/TimeZoneProviderStatus;)V

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;

    invoke-direct {v0}, Landroid/service/timezone/TimeZoneProviderStatus$Builder;-><init>()V

    .line 66
    :goto_0
    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getCreationElapsedMillis()J

    move-result-wide p0

    const/4 v1, 0x3

    .line 68
    invoke-virtual {v0, v1}, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->setTimeZoneResolutionOperationStatus(I)Landroid/service/timezone/TimeZoneProviderStatus$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->build()Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object v0

    .line 66
    invoke-static {p0, p1, v0}, Landroid/service/timezone/TimeZoneProviderEvent;->createUncertainEvent(JLandroid/service/timezone/TimeZoneProviderStatus;)Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    return-object p1
.end method
