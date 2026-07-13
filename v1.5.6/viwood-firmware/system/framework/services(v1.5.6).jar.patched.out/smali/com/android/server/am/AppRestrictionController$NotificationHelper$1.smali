.class public Lcom/android/server/am/AppRestrictionController$NotificationHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppRestrictionController$NotificationHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppRestrictionController$NotificationHelper;)V
    .locals 0

    .line 2508
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper$1;->this$0:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 2511
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2512
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string v0, "com.android.server.am.ACTION_FGS_MANAGER_TRAMPOLINE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2514
    :cond_0
    const-string p1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2515
    const-string v0, "android.intent.extra.UID"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 2516
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper$1;->this$0:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->cancelRequestBgRestrictedIfNecessary(Ljava/lang/String;I)V

    .line 2517
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SHOW_FOREGROUND_SERVICE_MANAGER"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x1000000

    .line 2518
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2520
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper$1;->this$0:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->-$$Nest$fgetmContext(Lcom/android/server/am/AppRestrictionController$NotificationHelper;)Landroid/content/Context;

    move-result-object p0

    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
