.class public Lcom/android/server/sensorprivacy/SensorState;
.super Ljava/lang/Object;
.source "SensorState.java"


# instance fields
.field public mLastChange:J

.field public mStateType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 31
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 36
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorState;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Lcom/android/server/sensorprivacy/SensorState;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 41
    invoke-virtual {p1}, Lcom/android/server/sensorprivacy/SensorState;->getLastChange()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 68
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorState;->enabledToState(Z)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/sensorprivacy/SensorState;-><init>(I)V

    return-void
.end method

.method public static enabledToState(Z)I
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method public getLastChange()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    return-wide v0
.end method

.method public getState()I
    .locals 0

    .line 54
    iget p0, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    return p0
.end method

.method public isEnabled()Z
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorState;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setEnabled(Z)Z
    .locals 0

    .line 72
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorState;->enabledToState(Z)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorState;->setState(I)Z

    move-result p0

    return p0
.end method

.method public setState(I)Z
    .locals 2

    .line 45
    iget v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    if-eq v0, p1, :cond_0

    .line 46
    iput p1, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 47
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
