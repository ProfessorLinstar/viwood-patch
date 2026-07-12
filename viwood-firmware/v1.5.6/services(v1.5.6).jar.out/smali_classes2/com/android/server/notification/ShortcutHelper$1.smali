.class public Lcom/android/server/notification/ShortcutHelper$1;
.super Ljava/lang/Object;
.source "ShortcutHelper.java"

# interfaces
.implements Landroid/content/pm/LauncherApps$ShortcutChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/ShortcutHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ShortcutHelper;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShortcutsAddedOrUpdated(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onShortcutsRemoved(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-static {v0, p1, p3}, Lcom/android/server/notification/ShortcutHelper;->-$$Nest$mgetPackageUserKey(Lcom/android/server/notification/ShortcutHelper;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object p3, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-static {p3}, Lcom/android/server/notification/ShortcutHelper;->-$$Nest$fgetmActiveShortcutBubbles(Lcom/android/server/notification/ShortcutHelper;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ShortcutInfo;

    .line 91
    iget-object v0, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p1, p3}, Lcom/android/server/notification/ShortcutHelper;->-$$Nest$monShortcutRemoved(Lcom/android/server/notification/ShortcutHelper;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
