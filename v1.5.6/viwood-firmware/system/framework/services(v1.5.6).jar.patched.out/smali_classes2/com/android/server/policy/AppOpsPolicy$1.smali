.class public Lcom/android/server/policy/AppOpsPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/AppOpsPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/AppOpsPolicy;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/server/policy/AppOpsPolicy$1;->this$0:Lcom/android/server/policy/AppOpsPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    iget-object p2, p0, Lcom/android/server/policy/AppOpsPolicy$1;->this$0:Lcom/android/server/policy/AppOpsPolicy;

    invoke-static {p2}, Lcom/android/server/policy/AppOpsPolicy;->-$$Nest$fgetmRoleManager(Lcom/android/server/policy/AppOpsPolicy;)Landroid/app/role/RoleManager;

    move-result-object p2

    const-string v0, "android.app.role.SYSTEM_ACTIVITY_RECOGNIZER"

    invoke-virtual {p2, v0}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 182
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 183
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy$1;->this$0:Lcom/android/server/policy/AppOpsPolicy;

    invoke-static {p0, p1}, Lcom/android/server/policy/AppOpsPolicy;->-$$Nest$mupdateActivityRecognizerTags(Lcom/android/server/policy/AppOpsPolicy;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
