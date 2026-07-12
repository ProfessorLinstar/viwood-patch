.class public final enum Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;
.super Ljava/lang/Enum;
.source "DisplayDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

.field public static final enum ADAPTIVE:Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

.field public static final enum DEFAULT:Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;


# direct methods
.method public static synthetic $values()[Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;
    .locals 2

    .line 3322
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->DEFAULT:Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    sget-object v1, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->ADAPTIVE:Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    filled-new-array {v0, v1}, [Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smconvert(Lcom/android/server/display/config/PredefinedBrightnessLimitNames;)Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->convert(Lcom/android/server/display/config/PredefinedBrightnessLimitNames;)Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 3323
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->DEFAULT:Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    const-string v1, "ADAPTIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->ADAPTIVE:Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    .line 3322
    invoke-static {}, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->$values()[Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->$VALUES:[Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3322
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static convert(Lcom/android/server/display/config/PredefinedBrightnessLimitNames;)Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;
    .locals 1

    .line 3327
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$PredefinedBrightnessLimitNames:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3331
    :cond_0
    sget-object p0, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->ADAPTIVE:Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    return-object p0

    .line 3329
    :cond_1
    sget-object p0, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->DEFAULT:Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;
    .locals 1

    .line 3322
    const-class v0, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;
    .locals 1

    .line 3322
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->$VALUES:[Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    invoke-virtual {v0}, [Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    return-object v0
.end method
