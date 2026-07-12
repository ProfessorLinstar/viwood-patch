.class public Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;
.super Ljava/lang/Object;
.source "HotwordDetectionConnection.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 192
    const-string p2, "android:receive_sandbox_trigger_audio"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 193
    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/AppOpsManager;

    .line 194
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    .line 195
    iget-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object p2, p2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 196
    :try_start_0
    const-string v0, "android:receive_sandbox_trigger_audio"

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmVoiceInteractorIdentity(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Landroid/media/permission/Identity;

    move-result-object v1

    iget v1, v1, Landroid/media/permission/Identity;->uid:I

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmVoiceInteractorIdentity(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Landroid/media/permission/Identity;

    move-result-object v2

    iget-object v2, v2, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 202
    const-string p1, "HotwordDetectionConnection"

    const-string v0, "Shutdown hotword detection service on voice activation op disabled."

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->safelyShutdownHotwordDetectionOnVoiceActivationDisabledLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 206
    :cond_0
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method
