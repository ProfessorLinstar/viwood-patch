.class public Lcom/android/server/wm/DisplayContent$1;
.super Ljava/lang/Object;
.source "DisplayContent.java"

# interfaces
.implements Landroid/view/InsetsState$OnTraverseCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIdMatch(Landroid/view/InsetsSource;Landroid/view/InsetsSource;)V
    .locals 0

    .line 303
    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    return-void
.end method
