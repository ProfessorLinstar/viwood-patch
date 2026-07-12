.class Lcom/android/server/display/brightness/DisplayBrightnessController$Injector;
.super Ljava/lang/Object;
.source "DisplayBrightnessController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayBrightnessStrategySelector(Landroid/content/Context;ILcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;
    .locals 1

    .line 540
    new-instance p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;-><init>(Landroid/content/Context;Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;ILcom/android/server/display/feature/DisplayManagerFlags;)V

    return-object p0
.end method
