.class public Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;
.super Ljava/lang/Object;
.source "DisplayDeviceConfig.java"


# instance fields
.field public final brightnessLowestCapAllowed:F

.field public final customAnimationRate:F

.field public final pollingWindowMaxMillis:I

.field public final pollingWindowMinMillis:I


# direct methods
.method public constructor <init>(FFII)V
    .locals 0

    .line 3061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3062
    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->brightnessLowestCapAllowed:F

    .line 3063
    iput p2, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->customAnimationRate:F

    .line 3064
    iput p3, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMaxMillis:I

    .line 3065
    iput p4, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMinMillis:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 3070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerThrottlingConfigData{brightnessLowestCapAllowed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->brightnessLowestCapAllowed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", customAnimationRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->customAnimationRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pollingWindowMaxMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMaxMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pollingWindowMinMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMinMillis:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "} "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
