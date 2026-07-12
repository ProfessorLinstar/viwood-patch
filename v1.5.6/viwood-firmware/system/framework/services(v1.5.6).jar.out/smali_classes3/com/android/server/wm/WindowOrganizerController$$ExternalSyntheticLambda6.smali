.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/wm/Transition;

.field public final synthetic f$3:Landroid/window/WindowContainerTransaction;

.field public final synthetic f$4:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

.field public final synthetic f$5:Lcom/android/server/wm/Transition$ReadyCondition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;ILcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iput p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;->f$2:Lcom/android/server/wm/Transition;

    iput-object p4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;->f$3:Landroid/window/WindowContainerTransaction;

    iput-object p5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;->f$4:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    iput-object p6, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;->f$5:Lcom/android/server/wm/Transition$ReadyCondition;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iget v1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;->f$1:I

    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;->f$2:Lcom/android/server/wm/Transition;

    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;->f$3:Landroid/window/WindowContainerTransaction;

    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;->f$4:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;->f$5:Lcom/android/server/wm/Transition$ReadyCondition;

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->$r8$lambda$4g-0MjkLCnERGpXWKQM1_kHTVNI(Lcom/android/server/wm/WindowOrganizerController;ILcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;)V

    return-void
.end method
