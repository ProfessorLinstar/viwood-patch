.class public abstract Lcom/android/server/BundleUtils;
.super Ljava/lang/Object;
.source "BundleUtils.java"


# direct methods
.method public static clone(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-eqz p0, :cond_0

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public static isEmpty(Landroid/os/Bundle;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 35
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
