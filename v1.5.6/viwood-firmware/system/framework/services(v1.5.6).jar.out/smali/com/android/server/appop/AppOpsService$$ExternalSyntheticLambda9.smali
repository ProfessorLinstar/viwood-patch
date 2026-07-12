.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/HexConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    move-object p0, p1

    check-cast p0, Lcom/android/server/appop/AppOpsService;

    move-object p1, p2

    check-cast p1, Lcom/android/server/appop/OnOpModeChangedListener;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    move-object p4, p5

    check-cast p4, Ljava/lang/String;

    move-object p5, p6

    check-cast p5, Ljava/lang/String;

    invoke-static/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->$r8$lambda$xAhQeGPgXGiSjmtMzzdf_avZ1GE(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/OnOpModeChangedListener;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
