.class public Lcom/android/server/SensitiveContentProtectionManagerService$1;
.super Landroid/media/projection/MediaProjectionManager$Callback;
.source "SensitiveContentProtectionManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/SensitiveContentProtectionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SensitiveContentProtectionManagerService;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService$1;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-direct {p0}, Landroid/media/projection/MediaProjectionManager$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 3

    .line 196
    const-string v0, "SensitiveContentProtectionManagerService.onProjectionStart"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 199
    :try_start_0
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$1;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {p0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$monProjectionStart(Lcom/android/server/SensitiveContentProtectionManagerService;Landroid/media/projection/MediaProjectionInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 202
    throw p0
.end method

.method public onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 2

    .line 208
    const-string p1, "SensitiveContentProtectionManagerService.onProjectionStop"

    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 211
    :try_start_0
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$1;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {p0}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$monProjectionEnd(Lcom/android/server/SensitiveContentProtectionManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 214
    throw p0
.end method
