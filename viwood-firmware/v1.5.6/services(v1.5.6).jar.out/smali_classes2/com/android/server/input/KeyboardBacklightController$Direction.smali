.class final enum Lcom/android/server/input/KeyboardBacklightController$Direction;
.super Ljava/lang/Enum;
.source "KeyboardBacklightController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/input/KeyboardBacklightController$Direction;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/input/KeyboardBacklightController$Direction;

.field public static final enum DIRECTION_DOWN:Lcom/android/server/input/KeyboardBacklightController$Direction;

.field public static final enum DIRECTION_UP:Lcom/android/server/input/KeyboardBacklightController$Direction;


# direct methods
.method public static synthetic $values()[Lcom/android/server/input/KeyboardBacklightController$Direction;
    .locals 2

    .line 69
    sget-object v0, Lcom/android/server/input/KeyboardBacklightController$Direction;->DIRECTION_UP:Lcom/android/server/input/KeyboardBacklightController$Direction;

    sget-object v1, Lcom/android/server/input/KeyboardBacklightController$Direction;->DIRECTION_DOWN:Lcom/android/server/input/KeyboardBacklightController$Direction;

    filled-new-array {v0, v1}, [Lcom/android/server/input/KeyboardBacklightController$Direction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 70
    new-instance v0, Lcom/android/server/input/KeyboardBacklightController$Direction;

    const-string v1, "DIRECTION_UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/input/KeyboardBacklightController$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/input/KeyboardBacklightController$Direction;->DIRECTION_UP:Lcom/android/server/input/KeyboardBacklightController$Direction;

    new-instance v0, Lcom/android/server/input/KeyboardBacklightController$Direction;

    const-string v1, "DIRECTION_DOWN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/input/KeyboardBacklightController$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/input/KeyboardBacklightController$Direction;->DIRECTION_DOWN:Lcom/android/server/input/KeyboardBacklightController$Direction;

    .line 69
    invoke-static {}, Lcom/android/server/input/KeyboardBacklightController$Direction;->$values()[Lcom/android/server/input/KeyboardBacklightController$Direction;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/KeyboardBacklightController$Direction;->$VALUES:[Lcom/android/server/input/KeyboardBacklightController$Direction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/input/KeyboardBacklightController$Direction;
    .locals 1

    .line 69
    const-class v0, Lcom/android/server/input/KeyboardBacklightController$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/KeyboardBacklightController$Direction;

    return-object p0
.end method

.method public static values()[Lcom/android/server/input/KeyboardBacklightController$Direction;
    .locals 1

    .line 69
    sget-object v0, Lcom/android/server/input/KeyboardBacklightController$Direction;->$VALUES:[Lcom/android/server/input/KeyboardBacklightController$Direction;

    invoke-virtual {v0}, [Lcom/android/server/input/KeyboardBacklightController$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/input/KeyboardBacklightController$Direction;

    return-object v0
.end method
