.class public Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;
.super Landroid/content/IIntentSender$Stub;
.source "PackageArchiver.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageArchiver;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageArchiver;)V
    .locals 0

    .line 1519
    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;->this$0:Lcom/android/server/pm/PackageArchiver;

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/PackageArchiver;Lcom/android/server/pm/PackageArchiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;-><init>(Lcom/android/server/pm/PackageArchiver;)V

    return-void
.end method


# virtual methods
.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1524
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "android.content.pm.extra.UNARCHIVE_STATUS"

    const/4 p4, -0x1

    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1529
    :cond_0
    const-string p1, "android.intent.extra.INTENT"

    const-class p3, Landroid/content/Intent;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 1530
    const-string p3, "android.intent.extra.USER"

    const-class p4, Landroid/os/UserHandle;

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1531
    iget-object p3, p0, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;->this$0:Lcom/android/server/pm/PackageArchiver;

    invoke-static {p3}, Lcom/android/server/pm/PackageArchiver;->-$$Nest$fgetmAppStateHelper(Lcom/android/server/pm/PackageArchiver;)Lcom/android/server/pm/AppStateHelper;

    move-result-object p3

    iget-object p4, p0, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;->this$0:Lcom/android/server/pm/PackageArchiver;

    .line 1533
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p5

    invoke-static {p4, p5}, Lcom/android/server/pm/PackageArchiver;->-$$Nest$mgetCurrentLauncherPackageName(Lcom/android/server/pm/PackageArchiver;I)Ljava/lang/String;

    move-result-object p4

    .line 1532
    invoke-virtual {p3, p4}, Lcom/android/server/pm/AppStateHelper;->isAppTopVisible(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/high16 p3, 0x10000000

    .line 1534
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1535
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;->this$0:Lcom/android/server/pm/PackageArchiver;

    invoke-static {p0}, Lcom/android/server/pm/PackageArchiver;->-$$Nest$fgetmContext(Lcom/android/server/pm/PackageArchiver;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    :goto_0
    return-void
.end method
