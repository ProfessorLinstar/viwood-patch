.class public Lcom/android/server/display/config/AutoBrightness;
.super Ljava/lang/Object;
.source "AutoBrightness.java"


# instance fields
.field public brighteningLightDebounceIdleMillis:Ljava/math/BigInteger;

.field public brighteningLightDebounceMillis:Ljava/math/BigInteger;

.field public darkeningLightDebounceIdleMillis:Ljava/math/BigInteger;

.field public darkeningLightDebounceMillis:Ljava/math/BigInteger;

.field public enabled:Ljava/lang/Boolean;

.field public idleStylusTimeoutMillis:Ljava/math/BigInteger;

.field public luxToBrightnessMapping:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/AutoBrightness;
    .locals 4

    .line 113
    new-instance v0, Lcom/android/server/display/config/AutoBrightness;

    invoke-direct {v0}, Lcom/android/server/display/config/AutoBrightness;-><init>()V

    const/4 v1, 0x0

    .line 115
    const-string v2, "enabled"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 118
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/AutoBrightness;->setEnabled(Z)V

    .line 120
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 122
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_8

    if-eq v1, v3, :cond_8

    .line 124
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 126
    const-string v2, "brighteningLightDebounceMillis"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 128
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/AutoBrightness;->setBrighteningLightDebounceMillis(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 130
    :cond_2
    const-string v2, "darkeningLightDebounceMillis"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 132
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/AutoBrightness;->setDarkeningLightDebounceMillis(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 134
    :cond_3
    const-string v2, "brighteningLightDebounceIdleMillis"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 135
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 136
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/AutoBrightness;->setBrighteningLightDebounceIdleMillis(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 138
    :cond_4
    const-string v2, "darkeningLightDebounceIdleMillis"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 139
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 140
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/AutoBrightness;->setDarkeningLightDebounceIdleMillis(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 142
    :cond_5
    const-string/jumbo v2, "luxToBrightnessMapping"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 143
    invoke-static {p0}, Lcom/android/server/display/config/LuxToBrightnessMapping;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/LuxToBrightnessMapping;

    move-result-object v1

    .line 144
    invoke-virtual {v0}, Lcom/android/server/display/config/AutoBrightness;->getLuxToBrightnessMapping()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_6
    const-string v2, "idleStylusTimeoutMillis"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 146
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 147
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/AutoBrightness;->setIdleStylusTimeoutMillis(Ljava/math/BigInteger;)V

    goto/16 :goto_0

    .line 150
    :cond_7
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_8
    if-ne v1, v3, :cond_9

    return-object v0

    .line 154
    :cond_9
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "AutoBrightness is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getBrighteningLightDebounceIdleMillis()Ljava/math/BigInteger;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/server/display/config/AutoBrightness;->brighteningLightDebounceIdleMillis:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getBrighteningLightDebounceMillis()Ljava/math/BigInteger;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/android/server/display/config/AutoBrightness;->brighteningLightDebounceMillis:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getDarkeningLightDebounceIdleMillis()Ljava/math/BigInteger;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/server/display/config/AutoBrightness;->darkeningLightDebounceIdleMillis:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getDarkeningLightDebounceMillis()Ljava/math/BigInteger;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/server/display/config/AutoBrightness;->darkeningLightDebounceMillis:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getEnabled()Z
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/server/display/config/AutoBrightness;->enabled:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 98
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getIdleStylusTimeoutMillis()Ljava/math/BigInteger;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/server/display/config/AutoBrightness;->idleStylusTimeoutMillis:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getLuxToBrightnessMapping()Ljava/util/List;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/server/display/config/AutoBrightness;->luxToBrightnessMapping:Ljava/util/List;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/config/AutoBrightness;->luxToBrightnessMapping:Ljava/util/List;

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/config/AutoBrightness;->luxToBrightnessMapping:Ljava/util/List;

    return-object p0
.end method

.method public final setBrighteningLightDebounceIdleMillis(Ljava/math/BigInteger;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/server/display/config/AutoBrightness;->brighteningLightDebounceIdleMillis:Ljava/math/BigInteger;

    return-void
.end method

.method public final setBrighteningLightDebounceMillis(Ljava/math/BigInteger;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/android/server/display/config/AutoBrightness;->brighteningLightDebounceMillis:Ljava/math/BigInteger;

    return-void
.end method

.method public final setDarkeningLightDebounceIdleMillis(Ljava/math/BigInteger;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/server/display/config/AutoBrightness;->darkeningLightDebounceIdleMillis:Ljava/math/BigInteger;

    return-void
.end method

.method public final setDarkeningLightDebounceMillis(Ljava/math/BigInteger;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/server/display/config/AutoBrightness;->darkeningLightDebounceMillis:Ljava/math/BigInteger;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 109
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/AutoBrightness;->enabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIdleStylusTimeoutMillis(Ljava/math/BigInteger;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/server/display/config/AutoBrightness;->idleStylusTimeoutMillis:Ljava/math/BigInteger;

    return-void
.end method
