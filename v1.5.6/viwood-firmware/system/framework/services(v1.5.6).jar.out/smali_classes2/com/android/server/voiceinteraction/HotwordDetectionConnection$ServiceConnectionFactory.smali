.class public Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;
.super Ljava/lang/Object;
.source "HotwordDetectionConnection.java"


# instance fields
.field public final mBindingFlags:I

.field public final mDetectionServiceType:I

.field public final mIntent:Landroid/content/Intent;

.field public final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/content/Intent;ZI)V
    .locals 0

    .line 807
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 808
    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mIntent:Landroid/content/Intent;

    .line 809
    iput p4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mDetectionServiceType:I

    if-eqz p3, :cond_0

    const/high16 p2, 0x400000

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 811
    :goto_0
    invoke-static {}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$sfgetSYSPROP_VISUAL_QUERY_SERVICE_ENABLED()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVisualQueryDetectionComponentName:Landroid/content/ComponentName;

    if-eqz p3, :cond_1

    iget-object p1, p1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordDetectionComponentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_1

    or-int/lit16 p2, p2, 0x2000

    .line 816
    :cond_1
    iput p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mBindingFlags:I

    return-void
.end method


# virtual methods
.method public createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;
    .locals 9

    .line 820
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mBindingFlags:I

    iget v5, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUserId:I

    new-instance v6, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory$$ExternalSyntheticLambda0;-><init>()V

    iget-object v7, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v7}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmRestartCount(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result v7

    rem-int/lit8 v7, v7, 0xa

    iget v8, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mDetectionServiceType:I

    invoke-direct/range {v0 .. v8}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;II)V

    .line 824
    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 826
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmAudioFlinger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$smupdateAudioFlinger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Landroid/os/IBinder;)V

    .line 827
    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$smupdateContentCaptureManager(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V

    .line 828
    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$smupdateSpeechService(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V

    .line 829
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$mupdateServiceIdentity(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V

    .line 830
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {p0, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$mupdateStorageService(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V

    return-object v0
.end method
