.class public Lcom/android/server/accessibility/BrailleDisplayConnection$DefaultNativeInterface;
.super Ljava/lang/Object;
.source "BrailleDisplayConnection.java"

# interfaces
.implements Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/accessibility/BrailleDisplayConnection-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection$DefaultNativeInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public getHidrawBusType(I)I
    .locals 0

    .line 635
    invoke-static {p1}, Lcom/android/server/accessibility/BrailleDisplayConnection;->-$$Nest$smnativeGetHidrawBusType(I)I

    move-result p0

    return p0
.end method

.method public getHidrawDesc(II)[B
    .locals 0

    .line 625
    invoke-static {p1, p2}, Lcom/android/server/accessibility/BrailleDisplayConnection;->-$$Nest$smnativeGetHidrawDesc(II)[B

    move-result-object p0

    return-object p0
.end method

.method public getHidrawDescSize(I)I
    .locals 0

    .line 620
    invoke-static {p1}, Lcom/android/server/accessibility/BrailleDisplayConnection;->-$$Nest$smnativeGetHidrawDescSize(I)I

    move-result p0

    return p0
.end method

.method public getHidrawName(I)Ljava/lang/String;
    .locals 0

    .line 640
    invoke-static {p1}, Lcom/android/server/accessibility/BrailleDisplayConnection;->-$$Nest$smnativeGetHidrawName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHidrawUniq(I)Ljava/lang/String;
    .locals 0

    .line 630
    invoke-static {p1}, Lcom/android/server/accessibility/BrailleDisplayConnection;->-$$Nest$smnativeGetHidrawUniq(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
