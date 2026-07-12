.class public Lcom/android/server/display/config/LuxToBrightnessMapping;
.super Ljava/lang/Object;
.source "LuxToBrightnessMapping.java"


# instance fields
.field public map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

.field public mode:Lcom/android/server/display/config/AutoBrightnessModeName;

.field public setting:Lcom/android/server/display/config/AutoBrightnessSettingName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/LuxToBrightnessMapping;
    .locals 4

    .line 54
    new-instance v0, Lcom/android/server/display/config/LuxToBrightnessMapping;

    invoke-direct {v0}, Lcom/android/server/display/config/LuxToBrightnessMapping;-><init>()V

    .line 56
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 58
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_4

    if-eq v1, v3, :cond_4

    .line 60
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 62
    const-string/jumbo v2, "map"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-static {p0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/LuxToBrightnessMapping;->setMap(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)V

    goto :goto_0

    .line 65
    :cond_1
    const-string/jumbo v2, "mode"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1}, Lcom/android/server/display/config/AutoBrightnessModeName;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/AutoBrightnessModeName;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/LuxToBrightnessMapping;->setMode(Lcom/android/server/display/config/AutoBrightnessModeName;)V

    goto :goto_0

    .line 69
    :cond_2
    const-string/jumbo v2, "setting"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v1}, Lcom/android/server/display/config/AutoBrightnessSettingName;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/AutoBrightnessSettingName;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/LuxToBrightnessMapping;->setSetting(Lcom/android/server/display/config/AutoBrightnessSettingName;)V

    goto :goto_0

    .line 74
    :cond_3
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    if-ne v1, v3, :cond_5

    return-object v0

    .line 78
    :cond_5
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "LuxToBrightnessMapping is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getMap()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/android/server/display/config/LuxToBrightnessMapping;->map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    return-object p0
.end method

.method public getMode()Lcom/android/server/display/config/AutoBrightnessModeName;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/server/display/config/LuxToBrightnessMapping;->mode:Lcom/android/server/display/config/AutoBrightnessModeName;

    return-object p0
.end method

.method public getSetting()Lcom/android/server/display/config/AutoBrightnessSettingName;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/server/display/config/LuxToBrightnessMapping;->setting:Lcom/android/server/display/config/AutoBrightnessSettingName;

    return-object p0
.end method

.method public final setMap(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/android/server/display/config/LuxToBrightnessMapping;->map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    return-void
.end method

.method public setMode(Lcom/android/server/display/config/AutoBrightnessModeName;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/server/display/config/LuxToBrightnessMapping;->mode:Lcom/android/server/display/config/AutoBrightnessModeName;

    return-void
.end method

.method public setSetting(Lcom/android/server/display/config/AutoBrightnessSettingName;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/server/display/config/LuxToBrightnessMapping;->setting:Lcom/android/server/display/config/AutoBrightnessSettingName;

    return-void
.end method
