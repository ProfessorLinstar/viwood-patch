.class public Lcom/android/server/location/altitude/AltitudeService;
.super Landroid/frameworks/location/altitude/IAltitudeService$Stub;
.source "AltitudeService.java"


# instance fields
.field public final mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/frameworks/location/altitude/IAltitudeService$Stub;-><init>()V

    .line 44
    new-instance v0, Landroid/location/altitude/AltitudeConverter;

    invoke-direct {v0}, Landroid/location/altitude/AltitudeConverter;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/altitude/AltitudeService;->mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

    .line 49
    iput-object p1, p0, Lcom/android/server/location/altitude/AltitudeService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addMslAltitudeToLocation(Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;)Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;
    .locals 4

    .line 55
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 56
    iget-wide v2, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;->latitudeDegrees:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 57
    iget-wide v2, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;->longitudeDegrees:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 58
    iget-wide v2, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;->altitudeMeters:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    .line 59
    iget p1, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;->verticalAccuracyMeters:F

    invoke-virtual {v0, p1}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    .line 61
    new-instance p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;

    invoke-direct {p1}, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;-><init>()V

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/altitude/AltitudeService;->mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

    iget-object p0, p0, Lcom/android/server/location/altitude/AltitudeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/location/altitude/AltitudeConverter;->addMslAltitudeToLocation(Landroid/content/Context;Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    invoke-virtual {v0}, Landroid/location/Location;->getMslAltitudeMeters()D

    move-result-wide v1

    iput-wide v1, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;->mslAltitudeMeters:D

    .line 70
    invoke-virtual {v0}, Landroid/location/Location;->getMslAltitudeAccuracyMeters()F

    move-result p0

    iput p0, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;->mslAltitudeAccuracyMeters:F

    const/4 p0, 0x1

    .line 71
    iput-boolean p0, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;->success:Z

    return-object p1

    :catch_0
    move-exception p0

    .line 65
    const-string v0, "AltitudeService"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 66
    iput-boolean p0, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;->success:Z

    return-object p1
.end method

.method public getGeoidHeight(Landroid/frameworks/location/altitude/GetGeoidHeightRequest;)Landroid/frameworks/location/altitude/GetGeoidHeightResponse;
    .locals 1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/altitude/AltitudeService;->mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

    iget-object p0, p0, Lcom/android/server/location/altitude/AltitudeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Landroid/location/altitude/AltitudeConverter;->getGeoidHeight(Landroid/content/Context;Landroid/frameworks/location/altitude/GetGeoidHeightRequest;)Landroid/frameworks/location/altitude/GetGeoidHeightResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 81
    const-string p1, "AltitudeService"

    const-string v0, ""

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    new-instance p0, Landroid/frameworks/location/altitude/GetGeoidHeightResponse;

    invoke-direct {p0}, Landroid/frameworks/location/altitude/GetGeoidHeightResponse;-><init>()V

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Landroid/frameworks/location/altitude/GetGeoidHeightResponse;->success:Z

    return-object p0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 90
    const-string p0, "e47d23f579ff7a897fb03e7e7f1c3006cfc6036b"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x2

    return p0
.end method
