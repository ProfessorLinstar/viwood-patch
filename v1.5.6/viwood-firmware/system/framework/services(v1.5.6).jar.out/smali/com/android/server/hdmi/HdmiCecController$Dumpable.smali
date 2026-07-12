.class public abstract Lcom/android/server/hdmi/HdmiCecController$Dumpable;
.super Ljava/lang/Object;
.source "HdmiCecController.java"


# instance fields
.field public final mTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1741
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController$Dumpable;->mTime:J

    return-void
.end method


# virtual methods
.method public abstract dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V
.end method
