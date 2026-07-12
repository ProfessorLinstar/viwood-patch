.class public Lcom/android/server/wm/TrustedPresentationListenerController$1;
.super Landroid/window/WindowInfosListener;
.source "TrustedPresentationListenerController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/TrustedPresentationListenerController;


# direct methods
.method public static synthetic $r8$lambda$9nARJT0bg00DduzIhSIQVBF-zts(Lcom/android/server/wm/TrustedPresentationListenerController$1;[Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TrustedPresentationListenerController$1;->lambda$onWindowInfosChanged$0([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/TrustedPresentationListenerController;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$1;->this$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    invoke-direct {p0}, Landroid/window/WindowInfosListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onWindowInfosChanged$0([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .locals 1

    .line 228
    iget-object p0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$1;->this$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/android/server/wm/TrustedPresentationListenerController;->-$$Nest$mcomputeTpl(Lcom/android/server/wm/TrustedPresentationListenerController;Landroid/util/Pair;)V

    return-void
.end method

.method public onWindowInfosChanged([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$1;->this$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    invoke-static {v0}, Lcom/android/server/wm/TrustedPresentationListenerController;->-$$Nest$fgetmHandler(Lcom/android/server/wm/TrustedPresentationListenerController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/TrustedPresentationListenerController$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TrustedPresentationListenerController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController$1;[Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
