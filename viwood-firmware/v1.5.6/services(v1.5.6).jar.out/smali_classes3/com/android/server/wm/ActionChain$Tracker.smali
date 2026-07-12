.class public Lcom/android/server/wm/ActionChain$Tracker;
.super Ljava/lang/Object;
.source "ActionChain.java"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/android/server/wm/ActionChain$Tracker;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public final makeChain(Ljava/lang/String;I)Lcom/android/server/wm/ActionChain;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 190
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    .line 189
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(Ljava/lang/String;ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object p0

    return-object p0
.end method

.method public final makeChain(Ljava/lang/String;ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;
    .locals 2

    .line 181
    new-instance v0, Lcom/android/server/wm/ActionChain;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/wm/ActionChain;-><init>(Ljava/lang/String;ILcom/android/server/wm/Transition;Lcom/android/server/wm/ActionChain-IA;)V

    .line 183
    iget-object p0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p0, v0, Lcom/android/server/wm/ActionChain;->mTmpAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method public start(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;
    .locals 1

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(Ljava/lang/String;ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object p0

    return-object p0
.end method

.method public startDefault(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;
    .locals 1

    const/4 v0, 0x1

    .line 205
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(Ljava/lang/String;I)Lcom/android/server/wm/ActionChain;

    move-result-object p0

    return-object p0
.end method

.method public startFailsafe(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;
    .locals 1

    const/4 v0, 0x5

    .line 226
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(Ljava/lang/String;I)Lcom/android/server/wm/ActionChain;

    move-result-object p0

    return-object p0
.end method

.method public startFinish(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;
    .locals 1

    const/4 v0, 0x4

    .line 214
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(Ljava/lang/String;ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object p0

    return-object p0
.end method

.method public startLegacy(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 220
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(Ljava/lang/String;ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object p0

    return-object p0
.end method
