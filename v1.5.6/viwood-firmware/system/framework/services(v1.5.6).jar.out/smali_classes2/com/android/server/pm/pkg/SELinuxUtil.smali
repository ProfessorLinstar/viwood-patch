.class public abstract Lcom/android/server/pm/pkg/SELinuxUtil;
.super Ljava/lang/Object;
.source "SELinuxUtil.java"


# direct methods
.method public static getSeinfoUser(Lcom/android/server/pm/pkg/PackageUserState;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 36
    const-string p0, ":ephemeralapp:complete"

    return-object p0

    .line 38
    :cond_0
    const-string p0, ":complete"

    return-object p0
.end method
