.class public Lcom/android/server/wm/FadeAnimationController$1;
.super Ljava/lang/Object;
.source "FadeAnimationController.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# instance fields
.field public final mTransformation:Landroid/view/animation/Transformation;

.field public final synthetic val$animation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FadeAnimationController;Landroid/view/animation/Animation;)V
    .locals 0

    .line 107
    iput-object p2, p0, Lcom/android/server/wm/FadeAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance p1, Landroid/view/animation/Transformation;

    invoke-direct {p1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FadeAnimationController$1;->mTransformation:Landroid/view/animation/Transformation;

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController$1;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/FadeAnimationController$1;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p3, p4, v1}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 126
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController$1;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 131
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4

    const-wide v0, 0x10b00000001L

    .line 137
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 138
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide v2, 0x10900000001L

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 139
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 118
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method
