.class public final enum Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;
.super Ljava/lang/Enum;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

.field public static final enum OOM_IMPROVEMENT:Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

.field public static final enum SCREEN_ON:Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;


# direct methods
.method public static synthetic $values()[Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;
    .locals 2

    .line 324
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;->SCREEN_ON:Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    sget-object v1, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;->OOM_IMPROVEMENT:Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    filled-new-array {v0, v1}, [Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 325
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    const-string v1, "SCREEN_ON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;->SCREEN_ON:Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    .line 326
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    const-string v1, "OOM_IMPROVEMENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;->OOM_IMPROVEMENT:Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    .line 324
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;->$values()[Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;->$VALUES:[Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 324
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;
    .locals 1

    .line 324
    const-class v0, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;
    .locals 1

    .line 324
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;->$VALUES:[Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    invoke-virtual {v0}, [Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    return-object v0
.end method
