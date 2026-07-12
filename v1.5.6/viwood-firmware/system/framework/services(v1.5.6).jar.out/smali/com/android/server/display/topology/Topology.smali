.class public Lcom/android/server/display/topology/Topology;
.super Ljava/lang/Object;
.source "Topology.java"


# instance fields
.field public display:Lcom/android/server/display/topology/Display;

.field public id:Ljava/lang/String;

.field public immutable:Ljava/lang/Boolean;

.field public order:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/topology/Topology;
    .locals 4

    .line 76
    new-instance v0, Lcom/android/server/display/topology/Topology;

    invoke-direct {v0}, Lcom/android/server/display/topology/Topology;-><init>()V

    .line 78
    const-string v1, "id"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v0, v1}, Lcom/android/server/display/topology/Topology;->setId(Ljava/lang/String;)V

    .line 83
    :cond_0
    const-string/jumbo v1, "order"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/android/server/display/topology/Topology;->setOrder(I)V

    .line 88
    :cond_1
    const-string v1, "immutable"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 90
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/server/display/topology/Topology;->setImmutable(Z)V

    .line 93
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 95
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_5

    if-eq v1, v3, :cond_5

    .line 97
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 98
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string v2, "display"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    invoke-static {p0}, Lcom/android/server/display/topology/Display;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/topology/Display;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/android/server/display/topology/Topology;->setDisplay(Lcom/android/server/display/topology/Display;)V

    goto :goto_0

    .line 103
    :cond_4
    invoke-static {p0}, Lcom/android/server/display/topology/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_5
    if-ne v1, v3, :cond_6

    return-object v0

    .line 107
    :cond_6
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "Topology is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDisplay()Lcom/android/server/display/topology/Display;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/android/server/display/topology/Topology;->display:Lcom/android/server/display/topology/Display;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/server/display/topology/Topology;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getImmutable()Z
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/server/display/topology/Topology;->immutable:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getOrder()I
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/server/display/topology/Topology;->order:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 43
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public hasDisplay()Z
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/android/server/display/topology/Topology;->display:Lcom/android/server/display/topology/Display;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public hasId()Z
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/server/display/topology/Topology;->id:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public hasImmutable()Z
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/server/display/topology/Topology;->immutable:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public hasOrder()Z
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/server/display/topology/Topology;->order:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setDisplay(Lcom/android/server/display/topology/Display;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/android/server/display/topology/Topology;->display:Lcom/android/server/display/topology/Display;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/server/display/topology/Topology;->id:Ljava/lang/String;

    return-void
.end method

.method public setImmutable(Z)V
    .locals 0

    .line 72
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/topology/Topology;->immutable:Ljava/lang/Boolean;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/topology/Topology;->order:Ljava/lang/Integer;

    return-void
.end method

.method public write(Lcom/android/server/display/topology/XmlWriter;Ljava/lang/String;)V
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/server/display/topology/Topology;->hasId()Z

    move-result v0

    const-string v1, "\""

    if-eqz v0, :cond_0

    .line 115
    const-string v0, " id=\""

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/server/display/topology/Topology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/topology/Topology;->hasOrder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const-string v0, " order=\""

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/topology/Topology;->hasImmutable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    const-string v0, " immutable=\""

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/server/display/topology/Topology;->getImmutable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 129
    :cond_2
    const-string v0, ">\n"

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/android/server/display/topology/XmlWriter;->increaseIndent()V

    .line 131
    invoke-virtual {p0}, Lcom/android/server/display/topology/Topology;->hasDisplay()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    invoke-virtual {p0}, Lcom/android/server/display/topology/Topology;->getDisplay()Lcom/android/server/display/topology/Display;

    move-result-object p0

    const-string v1, "display"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/topology/Display;->write(Lcom/android/server/display/topology/XmlWriter;Ljava/lang/String;)V

    .line 134
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/display/topology/XmlWriter;->decreaseIndent()V

    .line 135
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    return-void
.end method
