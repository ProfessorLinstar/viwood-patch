.class public Lcom/android/server/wm/WindowAnimationSpec;
.super Ljava/lang/Object;
.source "WindowAnimationSpec.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# instance fields
.field public mAnimation:Landroid/view/animation/Animation;

.field public final mCanSkipFirstFrame:Z

.field public final mIsAppAnimation:Z

.field public final mPosition:Landroid/graphics/Point;

.field public final mRootTaskBounds:Landroid/graphics/Rect;

.field public mRootTaskClipMode:I

.field public final mThreadLocalTmps:Ljava/lang/ThreadLocal;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mWindowCornerRadius:F


# direct methods
.method public static synthetic $r8$lambda$O4wc4-tRjiP9nCMbsYU_dS1zsf4()Lcom/android/server/wm/WindowAnimationSpec$TmpValues;
    .locals 2

    .line 0
    new-instance v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;-><init>(Lcom/android/server/wm/WindowAnimationSpec-IA;)V

    return-object v0
.end method

.method public constructor <init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZF)V
    .locals 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    .line 48
    new-instance v1, Lcom/android/server/wm/WindowAnimationSpec$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/WindowAnimationSpec$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    .line 51
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mRootTaskBounds:Landroid/graphics/Rect;

    .line 53
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    .line 65
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    if-eqz p2, :cond_0

    .line 67
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 69
    :cond_0
    iput p7, p0, Lcom/android/server/wm/WindowAnimationSpec;->mWindowCornerRadius:F

    .line 70
    iput-boolean p4, p0, Lcom/android/server/wm/WindowAnimationSpec;->mCanSkipFirstFrame:Z

    .line 71
    iput-boolean p6, p0, Lcom/android/server/wm/WindowAnimationSpec;->mIsAppAnimation:Z

    .line 72
    iput p5, p0, Lcom/android/server/wm/WindowAnimationSpec;->mRootTaskClipMode:I

    if-eqz p3, :cond_1

    .line 74
    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v7, p4

    .line 58
    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZF)V

    return-void
.end method


# virtual methods
.method public final accountForExtension(Landroid/view/animation/Transformation;Landroid/graphics/Rect;)V
    .locals 0

    .line 154
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    move-result-object p0

    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-static {p0, p1}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object p0

    .line 155
    invoke-virtual {p0, p1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 157
    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    :cond_0
    return-void
.end method

.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;

    .line 122
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 123
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p3, p4, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 124
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    iget-object p4, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    iget v1, p4, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p4, p4, Landroid/graphics/Point;->y:I

    int-to-float p4, p4

    invoke-virtual {p3, v1, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 125
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    iget-object p4, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->floats:[F

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 126
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 129
    iget p3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mRootTaskClipMode:I

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    .line 130
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 131
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object p3

    .line 132
    iget-object p4, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p0, p4, p3}, Lcom/android/server/wm/WindowAnimationSpec;->accountForExtension(Landroid/view/animation/Transformation;Landroid/graphics/Rect;)V

    .line 133
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 137
    :cond_0
    iget-object p3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/android/server/wm/WindowAnimationSpec;->mRootTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 138
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 139
    iget-object p3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget-object p4, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p4}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 141
    :cond_1
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    iget-object p4, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, p4}, Lcom/android/server/wm/WindowAnimationSpec;->accountForExtension(Landroid/view/animation/Transformation;Landroid/graphics/Rect;)V

    .line 142
    iget-object p3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 148
    :goto_0
    iget-object p3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p3}, Landroid/view/animation/Animation;->hasRoundedCorners()Z

    move-result p3

    if-eqz p3, :cond_2

    iget p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mWindowCornerRadius:F

    const/4 p3, 0x0

    cmpl-float p3, p0, p3

    if-lez p3, :cond_2

    .line 149
    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_2
    return-void
.end method

.method public canSkipFirstFrame()Z
    .locals 0

    .line 195
    iget-boolean p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mCanSkipFirstFrame:Z

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 205
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4

    const-wide v0, 0x10b00000001L

    .line 210
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 211
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide v2, 0x10900000001L

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 212
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 108
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v0

    return-wide v0
.end method
