.class public abstract Lcom/android/server/permission/jarjar/kotlin/UInt;
.super Ljava/lang/Object;
.source "UInt.kt"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final Companion:Lcom/android/server/permission/jarjar/kotlin/UInt$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/UInt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/UInt$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/jarjar/kotlin/UInt;->Companion:Lcom/android/server/permission/jarjar/kotlin/UInt$Companion;

    return-void
.end method

.method public static constructor-impl(I)I
    .locals 0

    .line 0
    return p0
.end method
