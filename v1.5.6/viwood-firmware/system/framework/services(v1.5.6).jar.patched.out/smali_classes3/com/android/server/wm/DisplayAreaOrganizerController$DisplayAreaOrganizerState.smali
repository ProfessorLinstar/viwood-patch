.class public Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;
.super Ljava/lang/Object;
.source "DisplayAreaOrganizerController.java"


# instance fields
.field public final mDeathRecipient:Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;

.field public final mOrganizer:Landroid/window/IDisplayAreaOrganizer;

.field public final synthetic this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;


# direct methods
.method public static synthetic $r8$lambda$AyRUxBOJZz2CT4uFqJu237eBzs8(Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;Landroid/os/IBinder;Lcom/android/server/wm/DisplayArea;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->lambda$destroy$0(Landroid/os/IBinder;Lcom/android/server/wm/DisplayArea;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmOrganizer(Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;)Landroid/window/IDisplayAreaOrganizer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V
    .locals 1

    .line 86
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 88
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->mDeathRecipient:Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;

    .line 90
    :try_start_0
    invoke-interface {p2}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    invoke-interface {v0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget-object v1, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;Landroid/os/IBinder;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    .line 108
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->mDeathRecipient:Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method public final synthetic lambda$destroy$0(Landroid/os/IBinder;Lcom/android/server/wm/DisplayArea;)V
    .locals 1

    .line 99
    iget-object v0, p2, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->isTaskDisplayArea()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/server/wm/TaskDisplayArea;->mCreatedByOrganizer:Z

    if-eqz p1, :cond_0

    .line 102
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;->-$$Nest$mdeleteTaskDisplayArea(Lcom/android/server/wm/DisplayAreaOrganizerController;Lcom/android/server/wm/TaskDisplayArea;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 104
    invoke-virtual {p2, p0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    :cond_1
    return-void
.end method
