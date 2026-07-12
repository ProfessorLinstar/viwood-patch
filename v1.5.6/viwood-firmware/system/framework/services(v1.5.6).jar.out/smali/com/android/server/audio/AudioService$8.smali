.class public Lcom/android/server/audio/AudioService$8;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# instance fields
.field public final synthetic val$audioserverExecutor:Ljava/util/concurrent/Executor;

.field public final synthetic val$provider:Lcom/android/server/audio/AudioServerPermissionProvider;


# direct methods
.method public static synthetic $r8$lambda$xv9-nEF6lf-JqbtB6cBOFa8D0Lo(Lcom/android/server/audio/AudioServerPermissionProvider;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 13534
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/audio/AudioServerPermissionProvider;->onModifyPackageState(ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/server/audio/AudioServerPermissionProvider;)V
    .locals 0

    .line 13524
    iput-object p1, p0, Lcom/android/server/audio/AudioService$8;->val$audioserverExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/server/audio/AudioService$8;->val$provider:Lcom/android/server/audio/AudioServerPermissionProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 13527
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 13528
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 13529
    const-string v1, "android.intent.extra.UID"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 13530
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.extra.ARCHIVAL"

    .line 13531
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 13532
    :cond_0
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13533
    iget-object p1, p0, Lcom/android/server/audio/AudioService$8;->val$audioserverExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$8;->val$provider:Lcom/android/server/audio/AudioServerPermissionProvider;

    new-instance p2, Lcom/android/server/audio/AudioService$8$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v1, v0}, Lcom/android/server/audio/AudioService$8$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioServerPermissionProvider;ILjava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
