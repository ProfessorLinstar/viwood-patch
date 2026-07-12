.class public Lcom/android/server/accessibility/magnification/MagnificationThumbnail$1;
.super Ljava/lang/Object;
.source "MagnificationThumbnail.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public mIsCancelled:Z

.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

.field public final synthetic val$fadeIn:Z


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;Z)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$1;->this$0:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    iput-boolean p2, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$1;->val$fadeIn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 240
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$1;->mIsCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 223
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$1;->mIsCancelled:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$1;->val$fadeIn:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$1;->this$0:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->-$$Nest$fgetmVisible(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 227
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$1;->this$0:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->-$$Nest$fgetmWindowManager(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$1;->this$0:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 228
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$1;->this$0:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->-$$Nest$fputmVisible(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method
