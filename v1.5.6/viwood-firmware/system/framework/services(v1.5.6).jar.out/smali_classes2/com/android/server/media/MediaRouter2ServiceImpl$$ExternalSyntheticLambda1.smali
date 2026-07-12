.class public final synthetic Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    move-object p0, p1

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-object p1, p2

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    check-cast p4, Landroid/media/RoutingSessionInfo;

    check-cast p5, Landroid/media/MediaRoute2Info;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->requestCreateSessionByManager(Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;JLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void
.end method
