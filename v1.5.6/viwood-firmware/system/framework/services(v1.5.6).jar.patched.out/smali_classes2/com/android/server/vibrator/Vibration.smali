.class public abstract Lcom/android/server/vibrator/Vibration;
.super Ljava/lang/Object;
.source "Vibration.java"


# static fields
.field public static final sNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

.field public final id:J

.field public mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

.field public final stats:Lcom/android/server/vibrator/VibrationStats;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/vibrator/Vibration;->sNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/android/server/vibrator/VibrationStats;

    invoke-direct {v0}, Lcom/android/server/vibrator/VibrationStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->RUNNING:Lcom/android/server/vibrator/VibrationSession$Status;

    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 57
    sget-object v0, Lcom/android/server/vibrator/Vibration;->sNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration;->id:J

    .line 58
    iput-object p1, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    return-void
.end method


# virtual methods
.method public end(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/android/server/vibrator/Vibration;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/VibrationSession$Status;

    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 83
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-object p1, p1, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationStats;->reportEnded(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Z

    return-void
.end method

.method public getStatus()Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0
.end method

.method public hasEnded()Z
    .locals 1

    .line 67
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->RUNNING:Lcom/android/server/vibrator/VibrationSession$Status;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
