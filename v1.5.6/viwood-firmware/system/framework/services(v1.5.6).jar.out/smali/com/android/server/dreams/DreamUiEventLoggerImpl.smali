.class public Lcom/android/server/dreams/DreamUiEventLoggerImpl;
.super Ljava/lang/Object;
.source "DreamUiEventLoggerImpl.java"

# interfaces
.implements Lcom/android/server/dreams/DreamUiEventLogger;


# instance fields
.field public final mLoggableDreamPrefixes:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/dreams/DreamUiEventLoggerImpl;->mLoggableDreamPrefixes:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final isFirstPartyDream(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 50
    :goto_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamUiEventLoggerImpl;->mLoggableDreamPrefixes:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 51
    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/dreams/DreamUiEventLoggerImpl;->isFirstPartyDream(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "other"

    :goto_0
    const/16 p0, 0x1c1

    const/4 v0, 0x0

    .line 41
    invoke-static {p0, v0, p1, v0, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIILjava/lang/String;)V

    return-void
.end method
