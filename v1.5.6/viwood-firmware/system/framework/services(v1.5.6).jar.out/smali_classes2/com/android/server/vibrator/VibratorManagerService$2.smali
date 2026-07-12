.class public Lcom/android/server/vibrator/VibratorManagerService$2;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "VibratorManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public static synthetic $r8$lambda$D7dDlhWGVGSpdCd8_rA1pzLX7xY(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mshouldCancelAppOpModeChangedLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$2;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .locals 1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$2;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 227
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$2;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$2$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/vibrator/VibratorManagerService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {p0, p2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mmaybeClearCurrentAndNextSessionsLocked(Lcom/android/server/vibrator/VibratorManagerService;Ljava/util/function/Predicate;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 230
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
