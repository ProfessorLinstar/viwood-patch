.class public abstract Lcom/android/server/grammaticalinflection/GrammaticalInflectionUtils;
.super Ljava/lang/Object;
.source "GrammaticalInflectionUtils.java"


# direct methods
.method public static checkSystemGrammaticalGenderPermission(Landroid/permission/PermissionManager;Landroid/content/AttributionSource;)Z
    .locals 2

    .line 36
    const-string v0, "android.permission.READ_SYSTEM_GRAMMATICAL_GENDER"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/permission/PermissionManager;->checkPermissionForDataDelivery(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AttributionSource: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not have READ_SYSTEM_GRAMMATICAL_GENDER permission."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GrammaticalInflectionUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
