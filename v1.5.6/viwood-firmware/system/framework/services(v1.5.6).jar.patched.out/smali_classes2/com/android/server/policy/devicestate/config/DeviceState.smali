.class public Lcom/android/server/policy/devicestate/config/DeviceState;
.super Ljava/lang/Object;
.source "DeviceState.java"


# instance fields
.field public conditions:Lcom/android/server/policy/devicestate/config/Conditions;

.field public flags:Lcom/android/server/policy/devicestate/config/Flags;

.field public identifier:Ljava/math/BigInteger;

.field public name:Ljava/lang/String;

.field public properties:Lcom/android/server/policy/devicestate/config/Properties;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/policy/devicestate/config/DeviceState;
    .locals 4

    .line 86
    new-instance v0, Lcom/android/server/policy/devicestate/config/DeviceState;

    invoke-direct {v0}, Lcom/android/server/policy/devicestate/config/DeviceState;-><init>()V

    .line 88
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 90
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_6

    if-eq v1, v3, :cond_6

    .line 92
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v2, "identifier"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 96
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, v2}, Lcom/android/server/policy/devicestate/config/DeviceState;->setIdentifier(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 98
    :cond_1
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/android/server/policy/devicestate/config/DeviceState;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_2
    const-string/jumbo v2, "properties"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/Properties;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/policy/devicestate/config/Properties;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lcom/android/server/policy/devicestate/config/DeviceState;->setProperties(Lcom/android/server/policy/devicestate/config/Properties;)V

    goto :goto_0

    .line 105
    :cond_3
    const-string v2, "flags"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 106
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/Flags;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/policy/devicestate/config/Flags;

    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Lcom/android/server/policy/devicestate/config/DeviceState;->setFlags(Lcom/android/server/policy/devicestate/config/Flags;)V

    goto :goto_0

    .line 108
    :cond_4
    const-string v2, "conditions"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 109
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/Conditions;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/policy/devicestate/config/Conditions;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/android/server/policy/devicestate/config/DeviceState;->setConditions(Lcom/android/server/policy/devicestate/config/Conditions;)V

    goto :goto_0

    .line 112
    :cond_5
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_6
    if-ne v1, v3, :cond_7

    return-object v0

    .line 116
    :cond_7
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "DeviceState is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getConditions()Lcom/android/server/policy/devicestate/config/Conditions;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->conditions:Lcom/android/server/policy/devicestate/config/Conditions;

    return-object p0
.end method

.method public getFlags()Lcom/android/server/policy/devicestate/config/Flags;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->flags:Lcom/android/server/policy/devicestate/config/Flags;

    return-object p0
.end method

.method public getIdentifier()Ljava/math/BigInteger;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->identifier:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getProperties()Lcom/android/server/policy/devicestate/config/Properties;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->properties:Lcom/android/server/policy/devicestate/config/Properties;

    return-object p0
.end method

.method public setConditions(Lcom/android/server/policy/devicestate/config/Conditions;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->conditions:Lcom/android/server/policy/devicestate/config/Conditions;

    return-void
.end method

.method public setFlags(Lcom/android/server/policy/devicestate/config/Flags;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->flags:Lcom/android/server/policy/devicestate/config/Flags;

    return-void
.end method

.method public setIdentifier(Ljava/math/BigInteger;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->identifier:Ljava/math/BigInteger;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->name:Ljava/lang/String;

    return-void
.end method

.method public setProperties(Lcom/android/server/policy/devicestate/config/Properties;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->properties:Lcom/android/server/policy/devicestate/config/Properties;

    return-void
.end method
