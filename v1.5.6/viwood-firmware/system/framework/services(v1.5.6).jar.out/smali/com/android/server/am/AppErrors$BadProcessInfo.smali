.class public final Lcom/android/server/am/AppErrors$BadProcessInfo;
.super Ljava/lang/Object;
.source "AppErrors.java"


# instance fields
.field public final longMsg:Ljava/lang/String;

.field public final shortMsg:Ljava/lang/String;

.field public final stack:Ljava/lang/String;

.field public final time:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1208
    iput-wide p1, p0, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    .line 1209
    iput-object p3, p0, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    .line 1210
    iput-object p4, p0, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    .line 1211
    iput-object p5, p0, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    return-void
.end method
