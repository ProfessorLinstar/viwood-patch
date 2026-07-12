.class public Lcom/android/server/trust/TrustAgentWrapper$1;
.super Landroid/content/BroadcastReceiver;
.source "TrustAgentWrapper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$1;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 125
    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 126
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$1;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {p0}, Lcom/android/server/trust/TrustAgentWrapper;->downgradeToTrustable()V

    :cond_0
    return-void
.end method
