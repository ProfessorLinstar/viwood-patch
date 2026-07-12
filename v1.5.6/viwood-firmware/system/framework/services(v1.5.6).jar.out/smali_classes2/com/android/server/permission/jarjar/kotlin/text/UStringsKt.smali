.class public abstract Lcom/android/server/permission/jarjar/kotlin/text/UStringsKt;
.super Ljava/lang/Object;
.source "UStrings.kt"


# direct methods
.method public static final toString-V7xB4Y4(II)Ljava/lang/String;
    .locals 4

    .line 39
    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/text/CharsKt__CharJVMKt;->checkRadix(I)I

    move-result p1

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Lcom/android/server/permission/jarjar/kotlin/UnsignedKt;->ulongToString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
