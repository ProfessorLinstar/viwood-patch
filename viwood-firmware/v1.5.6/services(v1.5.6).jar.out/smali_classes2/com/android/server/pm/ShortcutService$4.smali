.class public Lcom/android/server/pm/ShortcutService$4;
.super Landroid/app/UidObserver;
.source "ShortcutService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public static synthetic $r8$lambda$T38dA-CIlJpPfJ4NeUI0t9KKVrc(Lcom/android/server/pm/ShortcutService$4;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService$4;->lambda$onUidGone$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hFVl7KreRTWPjzcQMzQwU2JU-Sg(Lcom/android/server/pm/ShortcutService$4;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService$4;->lambda$onUidStateChanged$0(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$4;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onUidGone$1(I)V
    .locals 1

    .line 605
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$4;->this$0:Lcom/android/server/pm/ShortcutService;

    const/16 v0, 0x14

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->handleOnUidStateChanged(II)V

    return-void
.end method

.method public final synthetic lambda$onUidStateChanged$0(II)V
    .locals 0

    .line 599
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$4;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handleOnUidStateChanged(II)V

    return-void
.end method

.method public onUidGone(IZ)V
    .locals 1

    .line 604
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$4;->this$0:Lcom/android/server/pm/ShortcutService;

    new-instance v0, Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/ShortcutService$4;I)V

    invoke-virtual {p2, v0}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .locals 0

    .line 599
    iget-object p3, p0, Lcom/android/server/pm/ShortcutService$4;->this$0:Lcom/android/server/pm/ShortcutService;

    new-instance p4, Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutService$4;II)V

    invoke-virtual {p3, p4}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    return-void
.end method
