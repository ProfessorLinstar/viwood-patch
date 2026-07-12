.class public Lcom/android/server/policy/WindowWakeUpPolicy;
.super Ljava/lang/Object;
.source "WindowWakeUpPolicy.java"


# instance fields
.field public final mAllowTheaterModeWakeFromCameraLens:Z

.field public final mAllowTheaterModeWakeFromKey:Z

.field public final mAllowTheaterModeWakeFromLidSwitch:Z

.field public final mAllowTheaterModeWakeFromMotion:Z

.field public final mAllowTheaterModeWakeFromPowerKey:Z

.field public final mAllowTheaterModeWakeFromWakeGesture:Z

.field public final mClock:Lcom/android/internal/os/Clock;

.field public final mContext:Landroid/content/Context;

.field public mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static bridge synthetic -$$Nest$fputmInputWakeUpDelegate(Lcom/android/server/policy/WindowWakeUpPolicy;Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/WindowWakeUpPolicy;-><init>(Landroid/content/Context;Lcom/android/internal/os/Clock;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/Clock;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mContext:Landroid/content/Context;

    .line 74
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mPowerManager:Landroid/os/PowerManager;

    .line 75
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mWindowManager:Landroid/view/WindowManager;

    .line 76
    iput-object p2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mClock:Lcom/android/internal/os/Clock;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110028

    .line 79
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromKey:Z

    if-nez p2, :cond_1

    const p2, 0x111002c

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    iput-boolean p2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromPowerKey:Z

    const p2, 0x111002a

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromMotion:Z

    const p2, 0x1110025

    .line 86
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromCameraLens:Z

    const p2, 0x1110029

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromLidSwitch:Z

    const p2, 0x1110027

    .line 90
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromWakeGesture:Z

    .line 93
    new-instance p1, Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;-><init>(Lcom/android/server/policy/WindowWakeUpPolicy;Lcom/android/server/policy/WindowWakeUpPolicy-IA;)V

    const-class p0, Lcom/android/server/policy/WindowWakeUpPolicyInternal;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final canWakeUp(Z)Z
    .locals 3

    .line 240
    invoke-virtual {p0}, Lcom/android/server/policy/WindowWakeUpPolicy;->isDefaultDisplayOn()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 247
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mContext:Landroid/content/Context;

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "theater_mode_on"

    const/4 v2, 0x0

    .line 248
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    if-nez p1, :cond_3

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public final isDefaultDisplayOn()Z
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    invoke-static {p0}, Landroid/view/Display;->isOnState(I)Z

    move-result p0

    return p0
.end method

.method public final wakeUp(IJILjava/lang/String;)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    move v5, p1

    .line 267
    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mPowerManager:Landroid/os/PowerManager;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "android.policy:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide v1, p2

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;I)V

    return-void
.end method

.method public final wakeUp(JILjava/lang/String;)V
    .locals 2

    .line 259
    iget-object p0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method

.method public wakeUpFromCameraCover(J)Z
    .locals 2

    .line 186
    iget-boolean v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromCameraLens:Z

    invoke-virtual {p0, v0}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x5

    .line 190
    const-string v1, "CAMERA_COVER"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public wakeUpFromKey(IJIZ)Z
    .locals 9

    const/16 v0, 0x1a

    if-ne p4, v0, :cond_0

    .line 121
    iget-boolean v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromPowerKey:Z

    goto :goto_0

    .line 122
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromKey:Z

    .line 123
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 128
    invoke-interface {v1, p2, p3, p4, p5}, Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;->wakeUpFromKey(JIZ)Z

    move-result p5

    if-eqz p5, :cond_2

    return v2

    :cond_2
    if-ne p4, v0, :cond_3

    move v7, v2

    goto :goto_1

    :cond_3
    const/4 p5, 0x6

    move v7, p5

    :goto_1
    if-ne p4, v0, :cond_4

    .line 136
    const-string p4, "POWER"

    :goto_2
    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    move-object v8, p4

    goto :goto_3

    :cond_4
    const-string p4, "KEY"

    goto :goto_2

    .line 132
    :goto_3
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(IJILjava/lang/String;)V

    return v2
.end method

.method public wakeUpFromLid()Z
    .locals 4

    .line 201
    iget-boolean v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromLidSwitch:Z

    invoke-virtual {p0, v0}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0x9

    const-string v3, "LID"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public wakeUpFromMotion(IJIZZ)Z
    .locals 7

    .line 161
    iget-boolean v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromMotion:Z

    invoke-virtual {p0, v0}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

    const/4 v6, 0x1

    move-wide v1, p2

    if-eqz v0, :cond_1

    move v3, p4

    move v4, p5

    move v5, p6

    .line 166
    invoke-interface/range {v0 .. v5}, Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;->wakeUpFromMotion(JIZZ)Z

    move-result p2

    if-eqz p2, :cond_1

    return v6

    :cond_1
    const/4 v4, 0x7

    .line 171
    const-string v5, "MOTION"

    move-object v0, p0

    move-wide v2, v1

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(IJILjava/lang/String;)V

    return v6
.end method

.method public wakeUpFromPowerKeyCameraGesture()Z
    .locals 4

    .line 216
    iget-boolean v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromPowerKey:Z

    invoke-virtual {p0, v0}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x5

    const-string v3, "CAMERA_GESTURE_PREVENT_LOCK"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public wakeUpFromWakeGesture()Z
    .locals 4

    .line 231
    iget-boolean v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromWakeGesture:Z

    invoke-virtual {p0, v0}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    const-string v3, "GESTURE"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
