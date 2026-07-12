.class public final enum Lcom/android/server/wm/DeviceStateController$DeviceState;
.super Ljava/lang/Enum;
.source "DeviceStateController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/DeviceStateController$DeviceState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/wm/DeviceStateController$DeviceState;

.field public static final enum CONCURRENT:Lcom/android/server/wm/DeviceStateController$DeviceState;

.field public static final enum FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

.field public static final enum HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

.field public static final enum OPEN:Lcom/android/server/wm/DeviceStateController$DeviceState;

.field public static final enum REAR:Lcom/android/server/wm/DeviceStateController$DeviceState;

.field public static final enum UNKNOWN:Lcom/android/server/wm/DeviceStateController$DeviceState;


# direct methods
.method public static synthetic $values()[Lcom/android/server/wm/DeviceStateController$DeviceState;
    .locals 6

    .line 78
    sget-object v0, Lcom/android/server/wm/DeviceStateController$DeviceState;->UNKNOWN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    sget-object v1, Lcom/android/server/wm/DeviceStateController$DeviceState;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    sget-object v2, Lcom/android/server/wm/DeviceStateController$DeviceState;->FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    sget-object v3, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    sget-object v4, Lcom/android/server/wm/DeviceStateController$DeviceState;->REAR:Lcom/android/server/wm/DeviceStateController$DeviceState;

    sget-object v5, Lcom/android/server/wm/DeviceStateController$DeviceState;->CONCURRENT:Lcom/android/server/wm/DeviceStateController$DeviceState;

    filled-new-array/range {v0 .. v5}, [Lcom/android/server/wm/DeviceStateController$DeviceState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 79
    new-instance v0, Lcom/android/server/wm/DeviceStateController$DeviceState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/DeviceStateController$DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/DeviceStateController$DeviceState;->UNKNOWN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 80
    new-instance v0, Lcom/android/server/wm/DeviceStateController$DeviceState;

    const-string v1, "OPEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/DeviceStateController$DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/DeviceStateController$DeviceState;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 81
    new-instance v0, Lcom/android/server/wm/DeviceStateController$DeviceState;

    const-string v1, "FOLDED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/DeviceStateController$DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/DeviceStateController$DeviceState;->FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 82
    new-instance v0, Lcom/android/server/wm/DeviceStateController$DeviceState;

    const-string v1, "HALF_FOLDED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/DeviceStateController$DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 83
    new-instance v0, Lcom/android/server/wm/DeviceStateController$DeviceState;

    const-string v1, "REAR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/DeviceStateController$DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/DeviceStateController$DeviceState;->REAR:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 84
    new-instance v0, Lcom/android/server/wm/DeviceStateController$DeviceState;

    const-string v1, "CONCURRENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/DeviceStateController$DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/DeviceStateController$DeviceState;->CONCURRENT:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 78
    invoke-static {}, Lcom/android/server/wm/DeviceStateController$DeviceState;->$values()[Lcom/android/server/wm/DeviceStateController$DeviceState;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/DeviceStateController$DeviceState;->$VALUES:[Lcom/android/server/wm/DeviceStateController$DeviceState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/DeviceStateController$DeviceState;
    .locals 1

    .line 78
    const-class v0, Lcom/android/server/wm/DeviceStateController$DeviceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/DeviceStateController$DeviceState;

    return-object p0
.end method

.method public static values()[Lcom/android/server/wm/DeviceStateController$DeviceState;
    .locals 1

    .line 78
    sget-object v0, Lcom/android/server/wm/DeviceStateController$DeviceState;->$VALUES:[Lcom/android/server/wm/DeviceStateController$DeviceState;

    invoke-virtual {v0}, [Lcom/android/server/wm/DeviceStateController$DeviceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/DeviceStateController$DeviceState;

    return-object v0
.end method
