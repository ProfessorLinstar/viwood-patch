.class public Lcom/android/server/am/UserSwitchingDialog$1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "UserSwitchingDialog.java"


# instance fields
.field public final synthetic val$onAnimationEndWithTimeout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V
    .locals 0

    .line 256
    iput-object p2, p0, Lcom/android/server/am/UserSwitchingDialog$1;->val$onAnimationEndWithTimeout:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog$1;->val$onAnimationEndWithTimeout:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
