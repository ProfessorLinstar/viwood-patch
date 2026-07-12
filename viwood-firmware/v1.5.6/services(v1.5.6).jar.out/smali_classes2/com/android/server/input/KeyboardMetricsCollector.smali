.class public abstract Lcom/android/server/input/KeyboardMetricsCollector;
.super Ljava/lang/Object;
.source "KeyboardMetricsCollector.java"


# static fields
.field public static final DEBUG:Z

.field public static final DEFAULT_LANGUAGE_TAG:Ljava/lang/String; = "None"

.field static final DEFAULT_LAYOUT_NAME:Ljava/lang/String; = "Default"


# direct methods
.method public static bridge synthetic -$$Nest$smisValidSelectionCriteria(I)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/input/KeyboardMetricsCollector;->isValidSelectionCriteria(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 55
    const-string v0, "KeyboardMetricCollector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/KeyboardMetricsCollector;->DEBUG:Z

    return-void
.end method

.method public static addKeyboardLayoutConfigurationToProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;)V
    .locals 5

    const-wide v0, 0x20b00000001L

    .line 125
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 127
    iget-object v2, p1, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->keyboardLanguageTag:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10500000001L

    .line 129
    iget v4, p1, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->keyboardLayoutType:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10900000003L

    .line 131
    iget-object v4, p1, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->keyboardLayoutName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10500000004L

    .line 133
    iget v4, p1, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->layoutSelectionCriteria:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10900000006L

    .line 135
    iget-object v4, p1, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->imeLanguageTag:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10500000005L

    .line 137
    iget p1, p1, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->imeLayoutType:I

    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 139
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static isValidSelectionCriteria(I)Z
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static logKeyboardConfiguredAtom(Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;)V
    .locals 9

    .line 96
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 98
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->getLayoutConfigurations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;

    .line 99
    invoke-static {v0, v2}, Lcom/android/server/input/KeyboardMetricsCollector;->addKeyboardLayoutConfigurationToProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->isFirstConfiguration()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->getVendorId()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->getProductId()I

    move-result v6

    .line 104
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->getDeviceBus()I

    move-result v8

    const/16 v3, 0x2aa

    .line 102
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZII[BI)V

    .line 106
    sget-boolean v0, Lcom/android/server/input/KeyboardMetricsCollector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logging Keyboard configuration event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyboardMetricCollector"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static logKeyboardSystemsEventReportedAtom(Landroid/view/InputDevice;[III)V
    .locals 8

    if-eqz p3, :cond_1

    .line 72
    invoke-virtual {p0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    invoke-virtual {p0}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/InputDevice;->getProductId()I

    move-result v3

    .line 78
    invoke-virtual {p0}, Landroid/view/InputDevice;->getDeviceBus()I

    move-result v7

    const/16 v1, 0x2ab

    move-object v5, p1

    move v6, p2

    move v4, p3

    .line 76
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII[III)V

    .line 80
    sget-boolean p0, Lcom/android/server/input/KeyboardMetricsCollector;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Logging Keyboard system event: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " + "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyboardMetricCollector"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
