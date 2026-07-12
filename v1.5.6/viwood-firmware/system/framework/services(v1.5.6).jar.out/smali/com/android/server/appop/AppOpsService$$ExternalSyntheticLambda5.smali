.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/DodecConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    move-object p0, p1

    check-cast p0, Lcom/android/server/appop/AppOpsService;

    move-object p1, p2

    check-cast p1, Landroid/util/ArraySet;

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

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p6

    check-cast p8, Ljava/lang/Integer;

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p7

    check-cast p9, Ljava/lang/Integer;

    invoke-virtual {p9}, Ljava/lang/Integer;->intValue()I

    move-result p8

    check-cast p10, Ljava/lang/Integer;

    invoke-virtual {p10}, Ljava/lang/Integer;->intValue()I

    move-result p9

    check-cast p11, Ljava/lang/Integer;

    invoke-virtual {p11}, Ljava/lang/Integer;->intValue()I

    move-result p10

    check-cast p12, Ljava/lang/Integer;

    invoke-virtual {p12}, Ljava/lang/Integer;->intValue()I

    move-result p11

    invoke-static/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService;->$r8$lambda$goph2rcKC3ZkblAuNqSuM_8dDAo(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;IIIIII)V

    return-void
.end method
