.class public Lcom/android/server/audio/SystemServerAdapter$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemServerAdapter.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/SystemServerAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SystemServerAdapter;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/server/audio/SystemServerAdapter$1;->this$0:Lcom/android/server/audio/SystemServerAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 125
    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/SystemServerAdapter$1;->this$0:Lcom/android/server/audio/SystemServerAdapter;

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, p1, v2, p2, v3}, Lcom/android/server/audio/SystemServerAdapter;->-$$Nest$mbroadcastProfileParentStickyIntent(Lcom/android/server/audio/SystemServerAdapter;Landroid/content/Context;Ljava/lang/String;II)V

    .line 133
    iget-object p0, p0, Lcom/android/server/audio/SystemServerAdapter$1;->this$0:Lcom/android/server/audio/SystemServerAdapter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, p1, v1, p2, v0}, Lcom/android/server/audio/SystemServerAdapter;->-$$Nest$mbroadcastProfileParentStickyIntent(Lcom/android/server/audio/SystemServerAdapter;Landroid/content/Context;Ljava/lang/String;II)V

    :cond_2
    :goto_0
    return-void
.end method
