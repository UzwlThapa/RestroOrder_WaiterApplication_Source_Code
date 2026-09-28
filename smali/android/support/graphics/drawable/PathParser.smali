###### Class android.support.graphics.drawable.PathParser (android.support.graphics.drawable.PathParser)
.class Landroid/support/graphics/drawable/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/graphics/drawable/PathParser$PathDataNode;,
        Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "PathParser"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    return-void
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .registers 4
    .param p1, "cmd"    # C
    .param p2, "val"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/graphics/drawable/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/graphics/drawable/PathParser$PathDataNode;>;"
    new-instance v0, Landroid/support/graphics/drawable/PathParser$PathDataNode;

    invoke-direct {v0, p1, p2}, Landroid/support/graphics/drawable/PathParser$PathDataNode;-><init>(C[F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public static canMorph([Landroid/support/graphics/drawable/PathParser$PathDataNode;[Landroid/support/graphics/drawable/PathParser$PathDataNode;)Z
    .registers 6
    .param p0, "nodesFrom"    # [Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .param p1, "nodesTo"    # [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .prologue
    const/4 v1, 0x0

    .line 128
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 142
    :cond_5
    :goto_5
    return v1

    .line 132
    :cond_6
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_5

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_27

    .line 137
    aget-object v2, p0, v0

    iget-char v2, v2, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mType:C

    aget-object v3, p1, v0

    iget-char v3, v3, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mType:C

    if-ne v2, v3, :cond_5

    aget-object v2, p0, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mParams:[F

    array-length v2, v2

    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mParams:[F

    array-length v3, v3

    if-ne v2, v3, :cond_5

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 142
    :cond_27
    const/4 v1, 0x1

    goto :goto_5
.end method

.method static copyOfRange([FII)[F
    .registers 8
    .param p0, "original"    # [F
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 46
    if-le p1, p2, :cond_8

    .line 47
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 49
    :cond_8
    array-length v1, p0

    .line 50
    .local v1, "originalLength":I
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 51
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 53
    :cond_13
    sub-int v3, p2, p1

    .line 54
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 55
    .local v0, "copyLength":I
    new-array v2, v3, [F

    .line 56
    .local v2, "result":[F
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    return-object v2
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .registers 9
    .param p0, "pathData"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 83
    if-nez p0, :cond_5

    .line 84
    const/4 v5, 0x0

    .line 104
    :goto_4
    return-object v5

    .line 86
    :cond_5
    const/4 v3, 0x0

    .line 87
    .local v3, "start":I
    const/4 v0, 0x1

    .line 89
    .local v0, "end":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/graphics/drawable/PathParser$PathDataNode;>;"
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_33

    .line 91
    invoke-static {p0, v0}, Landroid/support/graphics/drawable/PathParser;->nextStart(Ljava/lang/String;I)I

    move-result v0

    .line 92
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2f

    .line 94
    invoke-static {v2}, Landroid/support/graphics/drawable/PathParser;->getFloats(Ljava/lang/String;)[F

    move-result-object v4

    .line 95
    .local v4, "val":[F
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v1, v5, v4}, Landroid/support/graphics/drawable/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 98
    .end local v4    # "val":[F
    :cond_2f
    move v3, v0

    .line 99
    add-int/lit8 v0, v0, 0x1

    .line 100
    goto :goto_c

    .line 101
    .end local v2    # "s":Ljava/lang/String;
    :cond_33
    sub-int v5, v0, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_47

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_47

    .line 102
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    new-array v6, v7, [F

    invoke-static {v1, v5, v6}, Landroid/support/graphics/drawable/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 104
    :cond_47
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    goto :goto_4
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .registers 7
    .param p0, "pathData"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 66
    .local v2, "path":Landroid/graphics/Path;
    invoke-static {p0}, Landroid/support/graphics/drawable/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    move-result-object v1

    .line 67
    .local v1, "nodes":[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    if-eqz v1, :cond_29

    .line 69
    :try_start_b
    invoke-static {v1, v2}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->nodesToPath([Landroid/support/graphics/drawable/PathParser$PathDataNode;Landroid/graphics/Path;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_f

    .line 75
    .end local v2    # "path":Landroid/graphics/Path;
    :goto_e
    return-object v2

    .line 70
    .restart local v2    # "path":Landroid/graphics/Path;
    :catch_f
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 75
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_29
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public static deepCopyNodes([Landroid/support/graphics/drawable/PathParser$PathDataNode;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .registers 5
    .param p0, "source"    # [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .prologue
    .line 112
    if-nez p0, :cond_4

    .line 113
    const/4 v0, 0x0

    .line 119
    :cond_3
    return-object v0

    .line 115
    :cond_4
    array-length v2, p0

    new-array v0, v2, [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 116
    .local v0, "copy":[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 117
    new-instance v2, Landroid/support/graphics/drawable/PathParser$PathDataNode;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/support/graphics/drawable/PathParser$PathDataNode;-><init>(Landroid/support/graphics/drawable/PathParser$PathDataNode;)V

    aput-object v2, v0, v1

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method private static extract(Ljava/lang/String;ILandroid/support/graphics/drawable/PathParser$ExtractFloatResult;)V
    .registers 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "result"    # Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;

    .prologue
    const/4 v7, 0x1

    .line 248
    move v1, p1

    .line 249
    .local v1, "currentIndex":I
    const/4 v2, 0x0

    .line 250
    .local v2, "foundSeparator":Z
    const/4 v6, 0x0

    iput-boolean v6, p2, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    .line 251
    const/4 v5, 0x0

    .line 252
    .local v5, "secondDot":Z
    const/4 v3, 0x0

    .line 253
    .local v3, "isExponential":Z
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_19

    .line 254
    move v4, v3

    .line 255
    .local v4, "isPrevExponential":Z
    const/4 v3, 0x0

    .line 256
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 257
    .local v0, "currentChar":C
    sparse-switch v0, :sswitch_data_34

    .line 283
    :cond_17
    :goto_17
    if-eqz v2, :cond_30

    .line 289
    .end local v0    # "currentChar":C
    .end local v4    # "isPrevExponential":Z
    :cond_19
    iput v1, p2, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->mEndPosition:I

    .line 290
    return-void

    .line 260
    .restart local v0    # "currentChar":C
    .restart local v4    # "isPrevExponential":Z
    :sswitch_1c
    const/4 v2, 0x1

    .line 261
    goto :goto_17

    .line 264
    :sswitch_1e
    if-eq v1, p1, :cond_17

    if-nez v4, :cond_17

    .line 265
    const/4 v2, 0x1

    .line 266
    iput-boolean v7, p2, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_17

    .line 270
    :sswitch_26
    if-nez v5, :cond_2a

    .line 271
    const/4 v5, 0x1

    goto :goto_17

    .line 274
    :cond_2a
    const/4 v2, 0x1

    .line 275
    iput-boolean v7, p2, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_17

    .line 280
    :sswitch_2e
    const/4 v3, 0x1

    goto :goto_17

    .line 253
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 257
    nop

    :sswitch_data_34
    .sparse-switch
        0x20 -> :sswitch_1c
        0x2c -> :sswitch_1c
        0x2d -> :sswitch_1e
        0x2e -> :sswitch_26
        0x45 -> :sswitch_2e
        0x65 -> :sswitch_2e
    .end sparse-switch
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .registers 14
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 201
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v11, 0x7a

    if-ne v8, v11, :cond_19

    move v8, v9

    :goto_b
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5a

    if-ne v11, v12, :cond_1b

    :goto_13
    or-int/2addr v8, v9

    if-eqz v8, :cond_1d

    .line 202
    new-array v8, v10, [F

    .line 232
    :goto_18
    return-object v8

    :cond_19
    move v8, v10

    .line 201
    goto :goto_b

    :cond_1b
    move v9, v10

    goto :goto_13

    .line 205
    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    new-array v5, v8, [F

    .line 206
    .local v5, "results":[F
    const/4 v0, 0x0

    .line 207
    .local v0, "count":I
    const/4 v6, 0x1

    .line 208
    .local v6, "startPosition":I
    const/4 v3, 0x0

    .line 210
    .local v3, "endPosition":I
    new-instance v4, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;

    invoke-direct {v4}, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;-><init>()V

    .line 211
    .local v4, "result":Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, "totalLength":I
    move v1, v0

    .line 216
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_30
    if-ge v6, v7, :cond_50

    .line 217
    invoke-static {p0, v6, v4}, Landroid/support/graphics/drawable/PathParser;->extract(Ljava/lang/String;ILandroid/support/graphics/drawable/PathParser$ExtractFloatResult;)V

    .line 218
    iget v3, v4, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->mEndPosition:I

    .line 220
    if-ge v6, v3, :cond_76

    .line 221
    add-int/lit8 v0, v1, 0x1

    .line 222
    .end local v1    # "count":I
    .restart local v0    # "count":I
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 221
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v5, v1

    .line 225
    :goto_45
    iget-boolean v8, v4, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    if-eqz v8, :cond_4c

    .line 227
    move v6, v3

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_30

    .line 229
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_4c
    add-int/lit8 v6, v3, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_30

    .line 232
    :cond_50
    const/4 v8, 0x0

    invoke-static {v5, v8, v1}, Landroid/support/graphics/drawable/PathParser;->copyOfRange([FII)[F
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_54} :catch_56

    move-result-object v8

    goto :goto_18

    .line 233
    .end local v1    # "count":I
    .end local v3    # "endPosition":I
    .end local v4    # "result":Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;
    .end local v5    # "results":[F
    .end local v6    # "startPosition":I
    .end local v7    # "totalLength":I
    :catch_56
    move-exception v2

    .line 234
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error in parsing \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "count":I
    .restart local v3    # "endPosition":I
    .restart local v4    # "result":Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;
    .restart local v5    # "results":[F
    .restart local v6    # "startPosition":I
    .restart local v7    # "totalLength":I
    :cond_76
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_45
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "end"    # I

    .prologue
    .line 164
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_20

    .line 165
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 170
    .local v0, "c":C
    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_18

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_21

    :cond_18
    const/16 v1, 0x65

    if-eq v0, v1, :cond_21

    const/16 v1, 0x45

    if-eq v0, v1, :cond_21

    .line 176
    .end local v0    # "c":C
    :cond_20
    return p1

    .line 174
    .restart local v0    # "c":C
    :cond_21
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static updateNodes([Landroid/support/graphics/drawable/PathParser$PathDataNode;[Landroid/support/graphics/drawable/PathParser$PathDataNode;)V
    .registers 6
    .param p0, "target"    # [Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .param p1, "source"    # [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .prologue
    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_26

    .line 154
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    iget-char v3, v3, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mType:C

    iput-char v3, v2, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mType:C

    .line 155
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_d
    aget-object v2, p1, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mParams:[F

    array-length v2, v2

    if-ge v1, v2, :cond_23

    .line 156
    aget-object v2, p0, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mParams:[F

    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mParams:[F

    aget v3, v3, v1

    aput v3, v2, v1

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 153
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    .end local v1    # "j":I
    :cond_26
    return-void
.end method

###### Class android.support.graphics.drawable.PathParser.ExtractFloatResult (android.support.graphics.drawable.PathParser$ExtractFloatResult)
.class Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtractFloatResult"
.end annotation


# instance fields
.field mEndPosition:I

.field mEndWithNegOrDot:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method

###### Class android.support.graphics.drawable.PathParser.PathDataNode (android.support.graphics.drawable.PathParser$PathDataNode)
.class public Landroid/support/graphics/drawable/PathParser$PathDataNode;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field mParams:[F

.field mType:C


# direct methods
.method constructor <init>(C[F)V
    .registers 3
    .param p1, "type"    # C
    .param p2, "params"    # [F

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-char p1, p0, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mType:C

    .line 304
    iput-object p2, p0, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mParams:[F

    .line 305
    return-void
.end method

.method constructor <init>(Landroid/support/graphics/drawable/PathParser$PathDataNode;)V
    .registers 5
    .param p1, "n"    # Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iget-char v0, p1, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mType:C

    iput-char v0, p0, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mType:C

    .line 309
    iget-object v0, p1, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mParams:[F

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mParams:[F

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/support/graphics/drawable/PathParser;->copyOfRange([FII)[F

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mParams:[F

    .line 310
    return-void
.end method

.method private static addCommand(Landroid/graphics/Path;[FCC[F)V
    .registers 29
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "current"    # [F
    .param p2, "previousCmd"    # C
    .param p3, "cmd"    # C
    .param p4, "val"    # [F

    .prologue
    .line 347
    const/16 v22, 0x2

    .line 348
    .local v22, "incr":I
    const/4 v3, 0x0

    aget v20, p1, v3

    .line 349
    .local v20, "currentX":F
    const/4 v3, 0x1

    aget v21, p1, v3

    .line 350
    .local v21, "currentY":F
    const/4 v3, 0x2

    aget v16, p1, v3

    .line 351
    .local v16, "ctrlPointX":F
    const/4 v3, 0x3

    aget v17, p1, v3

    .line 352
    .local v17, "ctrlPointY":F
    const/4 v3, 0x4

    aget v18, p1, v3

    .line 353
    .local v18, "currentSegmentStartX":F
    const/4 v3, 0x5

    aget v19, p1, v3

    .line 357
    .local v19, "currentSegmentStartY":F
    sparse-switch p3, :sswitch_data_396

    .line 400
    :goto_17
    const/16 v23, 0x0

    .local v23, "k":I
    :goto_19
    move-object/from16 v0, p4

    array-length v3, v0

    move/from16 v0, v23

    if-ge v0, v3, :cond_382

    .line 401
    sparse-switch p3, :sswitch_data_3e8

    .line 584
    :goto_23
    move/from16 p2, p3

    .line 400
    add-int v23, v23, v22

    goto :goto_19

    .line 360
    .end local v23    # "k":I
    :sswitch_28
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    .line 364
    move/from16 v20, v18

    .line 365
    move/from16 v21, v19

    .line 366
    move/from16 v16, v18

    .line 367
    move/from16 v17, v19

    .line 368
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_17

    .line 376
    :sswitch_3d
    const/16 v22, 0x2

    .line 377
    goto :goto_17

    .line 382
    :sswitch_40
    const/16 v22, 0x1

    .line 383
    goto :goto_17

    .line 386
    :sswitch_43
    const/16 v22, 0x6

    .line 387
    goto :goto_17

    .line 392
    :sswitch_46
    const/16 v22, 0x4

    .line 393
    goto :goto_17

    .line 396
    :sswitch_49
    const/16 v22, 0x7

    goto :goto_17

    .line 403
    .restart local v23    # "k":I
    :sswitch_4c
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-float v20, v20, v3

    .line 404
    add-int/lit8 v3, v23, 0x1

    aget v3, p4, v3

    add-float v21, v21, v3

    .line 405
    if-lez v23, :cond_68

    .line 409
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-int/lit8 v6, v23, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_23

    .line 411
    :cond_68
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-int/lit8 v6, v23, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 412
    move/from16 v18, v20

    .line 413
    move/from16 v19, v21

    .line 415
    goto :goto_23

    .line 417
    :sswitch_7a
    add-int/lit8 v3, v23, 0x0

    aget v20, p4, v3

    .line 418
    add-int/lit8 v3, v23, 0x1

    aget v21, p4, v3

    .line 419
    if-lez v23, :cond_92

    .line 423
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-int/lit8 v6, v23, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_23

    .line 425
    :cond_92
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-int/lit8 v6, v23, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 426
    move/from16 v18, v20

    .line 427
    move/from16 v19, v21

    .line 429
    goto :goto_23

    .line 431
    :sswitch_a4
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-int/lit8 v6, v23, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 432
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-float v20, v20, v3

    .line 433
    add-int/lit8 v3, v23, 0x1

    aget v3, p4, v3

    add-float v21, v21, v3

    .line 434
    goto/16 :goto_23

    .line 436
    :sswitch_bf
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-int/lit8 v6, v23, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 437
    add-int/lit8 v3, v23, 0x0

    aget v20, p4, v3

    .line 438
    add-int/lit8 v3, v23, 0x1

    aget v21, p4, v3

    .line 439
    goto/16 :goto_23

    .line 441
    :sswitch_d6
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 442
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-float v20, v20, v3

    .line 443
    goto/16 :goto_23

    .line 445
    :sswitch_e8
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 446
    add-int/lit8 v3, v23, 0x0

    aget v20, p4, v3

    .line 447
    goto/16 :goto_23

    .line 449
    :sswitch_f9
    const/4 v3, 0x0

    add-int/lit8 v6, v23, 0x0

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 450
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-float v21, v21, v3

    .line 451
    goto/16 :goto_23

    .line 453
    :sswitch_10b
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 454
    add-int/lit8 v3, v23, 0x0

    aget v21, p4, v3

    .line 455
    goto/16 :goto_23

    .line 457
    :sswitch_11c
    add-int/lit8 v3, v23, 0x0

    aget v4, p4, v3

    add-int/lit8 v3, v23, 0x1

    aget v5, p4, v3

    add-int/lit8 v3, v23, 0x2

    aget v6, p4, v3

    add-int/lit8 v3, v23, 0x3

    aget v7, p4, v3

    add-int/lit8 v3, v23, 0x4

    aget v8, p4, v3

    add-int/lit8 v3, v23, 0x5

    aget v9, p4, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 460
    add-int/lit8 v3, v23, 0x2

    aget v3, p4, v3

    add-float v16, v20, v3

    .line 461
    add-int/lit8 v3, v23, 0x3

    aget v3, p4, v3

    add-float v17, v21, v3

    .line 462
    add-int/lit8 v3, v23, 0x4

    aget v3, p4, v3

    add-float v20, v20, v3

    .line 463
    add-int/lit8 v3, v23, 0x5

    aget v3, p4, v3

    add-float v21, v21, v3

    .line 465
    goto/16 :goto_23

    .line 467
    :sswitch_153
    add-int/lit8 v3, v23, 0x0

    aget v4, p4, v3

    add-int/lit8 v3, v23, 0x1

    aget v5, p4, v3

    add-int/lit8 v3, v23, 0x2

    aget v6, p4, v3

    add-int/lit8 v3, v23, 0x3

    aget v7, p4, v3

    add-int/lit8 v3, v23, 0x4

    aget v8, p4, v3

    add-int/lit8 v3, v23, 0x5

    aget v9, p4, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 469
    add-int/lit8 v3, v23, 0x4

    aget v20, p4, v3

    .line 470
    add-int/lit8 v3, v23, 0x5

    aget v21, p4, v3

    .line 471
    add-int/lit8 v3, v23, 0x2

    aget v16, p4, v3

    .line 472
    add-int/lit8 v3, v23, 0x3

    aget v17, p4, v3

    .line 473
    goto/16 :goto_23

    .line 475
    :sswitch_182
    const/4 v4, 0x0

    .line 476
    .local v4, "reflectiveCtrlPointX":F
    const/4 v5, 0x0

    .line 477
    .local v5, "reflectiveCtrlPointY":F
    const/16 v3, 0x63

    move/from16 v0, p2

    if-eq v0, v3, :cond_19c

    const/16 v3, 0x73

    move/from16 v0, p2

    if-eq v0, v3, :cond_19c

    const/16 v3, 0x43

    move/from16 v0, p2

    if-eq v0, v3, :cond_19c

    const/16 v3, 0x53

    move/from16 v0, p2

    if-ne v0, v3, :cond_1a0

    .line 479
    :cond_19c
    sub-float v4, v20, v16

    .line 480
    sub-float v5, v21, v17

    .line 482
    :cond_1a0
    add-int/lit8 v3, v23, 0x0

    aget v6, p4, v3

    add-int/lit8 v3, v23, 0x1

    aget v7, p4, v3

    add-int/lit8 v3, v23, 0x2

    aget v8, p4, v3

    add-int/lit8 v3, v23, 0x3

    aget v9, p4, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 486
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-float v16, v20, v3

    .line 487
    add-int/lit8 v3, v23, 0x1

    aget v3, p4, v3

    add-float v17, v21, v3

    .line 488
    add-int/lit8 v3, v23, 0x2

    aget v3, p4, v3

    add-float v20, v20, v3

    .line 489
    add-int/lit8 v3, v23, 0x3

    aget v3, p4, v3

    add-float v21, v21, v3

    .line 490
    goto/16 :goto_23

    .line 492
    .end local v4    # "reflectiveCtrlPointX":F
    .end local v5    # "reflectiveCtrlPointY":F
    :sswitch_1cf
    move/from16 v4, v20

    .line 493
    .restart local v4    # "reflectiveCtrlPointX":F
    move/from16 v5, v21

    .line 494
    .restart local v5    # "reflectiveCtrlPointY":F
    const/16 v3, 0x63

    move/from16 v0, p2

    if-eq v0, v3, :cond_1eb

    const/16 v3, 0x73

    move/from16 v0, p2

    if-eq v0, v3, :cond_1eb

    const/16 v3, 0x43

    move/from16 v0, p2

    if-eq v0, v3, :cond_1eb

    const/16 v3, 0x53

    move/from16 v0, p2

    if-ne v0, v3, :cond_1f7

    .line 496
    :cond_1eb
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v20

    sub-float v4, v3, v16

    .line 497
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v21

    sub-float v5, v3, v17

    .line 499
    :cond_1f7
    add-int/lit8 v3, v23, 0x0

    aget v6, p4, v3

    add-int/lit8 v3, v23, 0x1

    aget v7, p4, v3

    add-int/lit8 v3, v23, 0x2

    aget v8, p4, v3

    add-int/lit8 v3, v23, 0x3

    aget v9, p4, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 501
    add-int/lit8 v3, v23, 0x0

    aget v16, p4, v3

    .line 502
    add-int/lit8 v3, v23, 0x1

    aget v17, p4, v3

    .line 503
    add-int/lit8 v3, v23, 0x2

    aget v20, p4, v3

    .line 504
    add-int/lit8 v3, v23, 0x3

    aget v21, p4, v3

    .line 505
    goto/16 :goto_23

    .line 507
    .end local v4    # "reflectiveCtrlPointX":F
    .end local v5    # "reflectiveCtrlPointY":F
    :sswitch_21e
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-int/lit8 v6, v23, 0x1

    aget v6, p4, v6

    add-int/lit8 v7, v23, 0x2

    aget v7, p4, v7

    add-int/lit8 v8, v23, 0x3

    aget v8, p4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 508
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-float v16, v20, v3

    .line 509
    add-int/lit8 v3, v23, 0x1

    aget v3, p4, v3

    add-float v17, v21, v3

    .line 510
    add-int/lit8 v3, v23, 0x2

    aget v3, p4, v3

    add-float v20, v20, v3

    .line 511
    add-int/lit8 v3, v23, 0x3

    aget v3, p4, v3

    add-float v21, v21, v3

    .line 512
    goto/16 :goto_23

    .line 514
    :sswitch_24d
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-int/lit8 v6, v23, 0x1

    aget v6, p4, v6

    add-int/lit8 v7, v23, 0x2

    aget v7, p4, v7

    add-int/lit8 v8, v23, 0x3

    aget v8, p4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 515
    add-int/lit8 v3, v23, 0x0

    aget v16, p4, v3

    .line 516
    add-int/lit8 v3, v23, 0x1

    aget v17, p4, v3

    .line 517
    add-int/lit8 v3, v23, 0x2

    aget v20, p4, v3

    .line 518
    add-int/lit8 v3, v23, 0x3

    aget v21, p4, v3

    .line 519
    goto/16 :goto_23

    .line 521
    :sswitch_274
    const/4 v4, 0x0

    .line 522
    .restart local v4    # "reflectiveCtrlPointX":F
    const/4 v5, 0x0

    .line 523
    .restart local v5    # "reflectiveCtrlPointY":F
    const/16 v3, 0x71

    move/from16 v0, p2

    if-eq v0, v3, :cond_28e

    const/16 v3, 0x74

    move/from16 v0, p2

    if-eq v0, v3, :cond_28e

    const/16 v3, 0x51

    move/from16 v0, p2

    if-eq v0, v3, :cond_28e

    const/16 v3, 0x54

    move/from16 v0, p2

    if-ne v0, v3, :cond_292

    .line 525
    :cond_28e
    sub-float v4, v20, v16

    .line 526
    sub-float v5, v21, v17

    .line 528
    :cond_292
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-int/lit8 v6, v23, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 530
    add-float v16, v20, v4

    .line 531
    add-float v17, v21, v5

    .line 532
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-float v20, v20, v3

    .line 533
    add-int/lit8 v3, v23, 0x1

    aget v3, p4, v3

    add-float v21, v21, v3

    .line 534
    goto/16 :goto_23

    .line 536
    .end local v4    # "reflectiveCtrlPointX":F
    .end local v5    # "reflectiveCtrlPointY":F
    :sswitch_2b1
    move/from16 v4, v20

    .line 537
    .restart local v4    # "reflectiveCtrlPointX":F
    move/from16 v5, v21

    .line 538
    .restart local v5    # "reflectiveCtrlPointY":F
    const/16 v3, 0x71

    move/from16 v0, p2

    if-eq v0, v3, :cond_2cd

    const/16 v3, 0x74

    move/from16 v0, p2

    if-eq v0, v3, :cond_2cd

    const/16 v3, 0x51

    move/from16 v0, p2

    if-eq v0, v3, :cond_2cd

    const/16 v3, 0x54

    move/from16 v0, p2

    if-ne v0, v3, :cond_2d9

    .line 540
    :cond_2cd
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v20

    sub-float v4, v3, v16

    .line 541
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v21

    sub-float v5, v3, v17

    .line 543
    :cond_2d9
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-int/lit8 v6, v23, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 545
    move/from16 v16, v4

    .line 546
    move/from16 v17, v5

    .line 547
    add-int/lit8 v3, v23, 0x0

    aget v20, p4, v3

    .line 548
    add-int/lit8 v3, v23, 0x1

    aget v21, p4, v3

    .line 549
    goto/16 :goto_23

    .line 552
    .end local v4    # "reflectiveCtrlPointX":F
    .end local v5    # "reflectiveCtrlPointY":F
    :sswitch_2f4
    add-int/lit8 v3, v23, 0x5

    aget v3, p4, v3

    add-float v9, v3, v20

    add-int/lit8 v3, v23, 0x6

    aget v3, p4, v3

    add-float v10, v3, v21

    add-int/lit8 v3, v23, 0x0

    aget v11, p4, v3

    add-int/lit8 v3, v23, 0x1

    aget v12, p4, v3

    add-int/lit8 v3, v23, 0x2

    aget v13, p4, v3

    add-int/lit8 v3, v23, 0x3

    aget v3, p4, v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_33b

    const/4 v14, 0x1

    :goto_316
    add-int/lit8 v3, v23, 0x4

    aget v3, p4, v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_33d

    const/4 v15, 0x1

    :goto_320
    move-object/from16 v6, p0

    move/from16 v7, v20

    move/from16 v8, v21

    invoke-static/range {v6 .. v15}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 562
    add-int/lit8 v3, v23, 0x5

    aget v3, p4, v3

    add-float v20, v20, v3

    .line 563
    add-int/lit8 v3, v23, 0x6

    aget v3, p4, v3

    add-float v21, v21, v3

    .line 564
    move/from16 v16, v20

    .line 565
    move/from16 v17, v21

    .line 566
    goto/16 :goto_23

    .line 552
    :cond_33b
    const/4 v14, 0x0

    goto :goto_316

    :cond_33d
    const/4 v15, 0x0

    goto :goto_320

    .line 568
    :sswitch_33f
    add-int/lit8 v3, v23, 0x5

    aget v9, p4, v3

    add-int/lit8 v3, v23, 0x6

    aget v10, p4, v3

    add-int/lit8 v3, v23, 0x0

    aget v11, p4, v3

    add-int/lit8 v3, v23, 0x1

    aget v12, p4, v3

    add-int/lit8 v3, v23, 0x2

    aget v13, p4, v3

    add-int/lit8 v3, v23, 0x3

    aget v3, p4, v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_37e

    const/4 v14, 0x1

    :goto_35d
    add-int/lit8 v3, v23, 0x4

    aget v3, p4, v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_380

    const/4 v15, 0x1

    :goto_367
    move-object/from16 v6, p0

    move/from16 v7, v20

    move/from16 v8, v21

    invoke-static/range {v6 .. v15}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 578
    add-int/lit8 v3, v23, 0x5

    aget v20, p4, v3

    .line 579
    add-int/lit8 v3, v23, 0x6

    aget v21, p4, v3

    .line 580
    move/from16 v16, v20

    .line 581
    move/from16 v17, v21

    goto/16 :goto_23

    .line 568
    :cond_37e
    const/4 v14, 0x0

    goto :goto_35d

    :cond_380
    const/4 v15, 0x0

    goto :goto_367

    .line 586
    :cond_382
    const/4 v3, 0x0

    aput v20, p1, v3

    .line 587
    const/4 v3, 0x1

    aput v21, p1, v3

    .line 588
    const/4 v3, 0x2

    aput v16, p1, v3

    .line 589
    const/4 v3, 0x3

    aput v17, p1, v3

    .line 590
    const/4 v3, 0x4

    aput v18, p1, v3

    .line 591
    const/4 v3, 0x5

    aput v19, p1, v3

    .line 592
    return-void

    .line 357
    nop

    :sswitch_data_396
    .sparse-switch
        0x41 -> :sswitch_49
        0x43 -> :sswitch_43
        0x48 -> :sswitch_40
        0x4c -> :sswitch_3d
        0x4d -> :sswitch_3d
        0x51 -> :sswitch_46
        0x53 -> :sswitch_46
        0x54 -> :sswitch_3d
        0x56 -> :sswitch_40
        0x5a -> :sswitch_28
        0x61 -> :sswitch_49
        0x63 -> :sswitch_43
        0x68 -> :sswitch_40
        0x6c -> :sswitch_3d
        0x6d -> :sswitch_3d
        0x71 -> :sswitch_46
        0x73 -> :sswitch_46
        0x74 -> :sswitch_3d
        0x76 -> :sswitch_40
        0x7a -> :sswitch_28
    .end sparse-switch

    .line 401
    :sswitch_data_3e8
    .sparse-switch
        0x41 -> :sswitch_33f
        0x43 -> :sswitch_153
        0x48 -> :sswitch_e8
        0x4c -> :sswitch_bf
        0x4d -> :sswitch_7a
        0x51 -> :sswitch_24d
        0x53 -> :sswitch_1cf
        0x54 -> :sswitch_2b1
        0x56 -> :sswitch_10b
        0x61 -> :sswitch_2f4
        0x63 -> :sswitch_11c
        0x68 -> :sswitch_d6
        0x6c -> :sswitch_a4
        0x6d -> :sswitch_4c
        0x71 -> :sswitch_21e
        0x73 -> :sswitch_182
        0x74 -> :sswitch_274
        0x76 -> :sswitch_f9
    .end sparse-switch
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .registers 74
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "cx"    # D
    .param p3, "cy"    # D
    .param p5, "a"    # D
    .param p7, "b"    # D
    .param p9, "e1x"    # D
    .param p11, "e1y"    # D
    .param p13, "theta"    # D
    .param p15, "start"    # D
    .param p17, "sweep"    # D

    .prologue
    .line 699
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v2, v2, p17

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v36, v0

    .line 701
    .local v36, "numSegments":I
    move-wide/from16 v32, p15

    .line 702
    .local v32, "eta1":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    .line 703
    .local v18, "cosTheta":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v50

    .line 704
    .local v50, "sinTheta":D
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 705
    .local v14, "cosEta1":D
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    .line 706
    .local v46, "sinEta1":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v18

    mul-double v2, v2, v46

    mul-double v4, p7, v50

    mul-double/2addr v4, v14

    sub-double v24, v2, v4

    .line 707
    .local v24, "ep1x":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v50

    mul-double v2, v2, v46

    mul-double v4, p7, v18

    mul-double/2addr v4, v14

    add-double v26, v2, v4

    .line 709
    .local v26, "ep1y":D
    move/from16 v0, v36

    int-to-double v2, v0

    div-double v12, p17, v2

    .line 710
    .local v12, "anglePerSegment":D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_45
    move/from16 v0, v36

    if-ge v9, v0, :cond_e5

    .line 711
    add-double v34, v32, v12

    .line 712
    .local v34, "eta2":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v48

    .line 713
    .local v48, "sinEta2":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    .line 714
    .local v16, "cosEta2":D
    mul-double v2, p5, v18

    mul-double v2, v2, v16

    add-double v2, v2, p1

    mul-double v4, p7, v50

    mul-double v4, v4, v48

    sub-double v20, v2, v4

    .line 715
    .local v20, "e2x":D
    mul-double v2, p5, v50

    mul-double v2, v2, v16

    add-double v2, v2, p3

    mul-double v4, p7, v18

    mul-double v4, v4, v48

    add-double v22, v2, v4

    .line 716
    .local v22, "e2y":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v18

    mul-double v2, v2, v48

    mul-double v4, p7, v50

    mul-double v4, v4, v16

    sub-double v28, v2, v4

    .line 717
    .local v28, "ep2x":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v50

    mul-double v2, v2, v48

    mul-double v4, p7, v18

    mul-double v4, v4, v16

    add-double v30, v2, v4

    .line 718
    .local v30, "ep2y":D
    sub-double v2, v34, v32

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v52

    .line 719
    .local v52, "tanDiff2":D
    sub-double v2, v34, v32

    .line 720
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v6, v6, v52

    mul-double v6, v6, v52

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double v10, v2, v4

    .line 721
    .local v10, "alpha":D
    mul-double v2, v10, v24

    add-double v38, p9, v2

    .line 722
    .local v38, "q1x":D
    mul-double v2, v10, v26

    add-double v40, p11, v2

    .line 723
    .local v40, "q1y":D
    mul-double v2, v10, v28

    sub-double v42, v20, v2

    .line 724
    .local v42, "q2x":D
    mul-double v2, v10, v30

    sub-double v44, v22, v2

    .line 727
    .local v44, "q2y":D
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 729
    move-wide/from16 v0, v38

    double-to-float v3, v0

    move-wide/from16 v0, v40

    double-to-float v4, v0

    move-wide/from16 v0, v42

    double-to-float v5, v0

    move-wide/from16 v0, v44

    double-to-float v6, v0

    move-wide/from16 v0, v20

    double-to-float v7, v0

    move-wide/from16 v0, v22

    double-to-float v8, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 735
    move-wide/from16 v32, v34

    .line 736
    move-wide/from16 p9, v20

    .line 737
    move-wide/from16 p11, v22

    .line 738
    move-wide/from16 v24, v28

    .line 739
    move-wide/from16 v26, v30

    .line 710
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_45

    .line 741
    .end local v10    # "alpha":D
    .end local v16    # "cosEta2":D
    .end local v20    # "e2x":D
    .end local v22    # "e2y":D
    .end local v28    # "ep2x":D
    .end local v30    # "ep2y":D
    .end local v34    # "eta2":D
    .end local v38    # "q1x":D
    .end local v40    # "q1y":D
    .end local v42    # "q2x":D
    .end local v44    # "q2y":D
    .end local v48    # "sinEta2":D
    .end local v52    # "tanDiff2":D
    :cond_e5
    return-void
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .registers 68
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "a"    # F
    .param p6, "b"    # F
    .param p7, "theta"    # F
    .param p8, "isMoreThanHalf"    # Z
    .param p9, "isPositiveArc"    # Z

    .prologue
    .line 606
    move/from16 v0, p7

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 608
    .local v16, "thetaD":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    .line 609
    .local v24, "cosTheta":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v42

    .line 612
    .local v42, "sinTheta":D
    move/from16 v0, p1

    float-to-double v2, v0

    mul-double v2, v2, v24

    move/from16 v0, p2

    float-to-double v8, v0

    mul-double v8, v8, v42

    add-double/2addr v2, v8

    move/from16 v0, p5

    float-to-double v8, v0

    div-double v46, v2, v8

    .line 613
    .local v46, "x0p":D
    move/from16 v0, p1

    neg-float v2, v0

    float-to-double v2, v2

    mul-double v2, v2, v42

    move/from16 v0, p2

    float-to-double v8, v0

    mul-double v8, v8, v24

    add-double/2addr v2, v8

    move/from16 v0, p6

    float-to-double v8, v0

    div-double v52, v2, v8

    .line 614
    .local v52, "y0p":D
    move/from16 v0, p3

    float-to-double v2, v0

    mul-double v2, v2, v24

    move/from16 v0, p4

    float-to-double v8, v0

    mul-double v8, v8, v42

    add-double/2addr v2, v8

    move/from16 v0, p5

    float-to-double v8, v0

    div-double v48, v2, v8

    .line 615
    .local v48, "x1p":D
    move/from16 v0, p3

    neg-float v2, v0

    float-to-double v2, v2

    mul-double v2, v2, v42

    move/from16 v0, p4

    float-to-double v8, v0

    mul-double v8, v8, v24

    add-double/2addr v2, v8

    move/from16 v0, p6

    float-to-double v8, v0

    div-double v54, v2, v8

    .line 618
    .local v54, "y1p":D
    sub-double v30, v46, v48

    .line 619
    .local v30, "dx":D
    sub-double v32, v52, v54

    .line 620
    .local v32, "dy":D
    add-double v2, v46, v48

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v50, v2, v8

    .line 621
    .local v50, "xm":D
    add-double v2, v52, v54

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v56, v2, v8

    .line 623
    .local v56, "ym":D
    mul-double v2, v30, v30

    mul-double v8, v32, v32

    add-double v28, v2, v8

    .line 624
    .local v28, "dsq":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v28, v2

    if-nez v2, :cond_75

    .line 625
    const-string v2, "PathParser"

    const-string v3, " Points are coincident"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_74
    return-void

    .line 628
    :cond_75
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v2, v2, v28

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    sub-double v26, v2, v8

    .line 629
    .local v26, "disc":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v26, v2

    if-gez v2, :cond_c2

    .line 630
    const-string v2, "PathParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Points are too far apart "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v28

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v8, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v2, v8

    double-to-float v0, v2

    move/from16 v22, v0

    .line 632
    .local v22, "adjust":F
    mul-float v7, p5, v22

    mul-float v8, p6, v22

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v2 .. v11}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    goto :goto_74

    .line 636
    .end local v22    # "adjust":F
    :cond_c2
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v36

    .line 637
    .local v36, "s":D
    mul-double v38, v36, v30

    .line 638
    .local v38, "sdx":D
    mul-double v40, v36, v32

    .line 641
    .local v40, "sdy":D
    move/from16 v0, p8

    move/from16 v1, p9

    if-ne v0, v1, :cond_127

    .line 642
    sub-double v4, v50, v40

    .line 643
    .local v4, "cx":D
    add-double v6, v56, v38

    .line 649
    .local v6, "cy":D
    :goto_d4
    sub-double v2, v52, v6

    sub-double v8, v46, v4

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    .line 651
    .local v18, "eta0":D
    sub-double v2, v54, v6

    sub-double v8, v48, v4

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v34

    .line 653
    .local v34, "eta1":D
    sub-double v20, v34, v18

    .line 654
    .local v20, "sweep":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v20, v2

    if-ltz v2, :cond_12c

    const/4 v2, 0x1

    :goto_ed
    move/from16 v0, p9

    if-eq v0, v2, :cond_fe

    .line 655
    const-wide/16 v2, 0x0

    cmpl-double v2, v20, v2

    if-lez v2, :cond_12e

    .line 656
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v20, v20, v2

    .line 662
    :cond_fe
    :goto_fe
    move/from16 v0, p5

    float-to-double v2, v0

    mul-double/2addr v4, v2

    .line 663
    move/from16 v0, p6

    float-to-double v2, v0

    mul-double/2addr v6, v2

    .line 664
    move-wide/from16 v44, v4

    .line 665
    .local v44, "tcx":D
    mul-double v2, v4, v24

    mul-double v8, v6, v42

    sub-double v4, v2, v8

    .line 666
    mul-double v2, v44, v42

    mul-double v8, v6, v24

    add-double v6, v2, v8

    .line 668
    move/from16 v0, p5

    float-to-double v8, v0

    move/from16 v0, p6

    float-to-double v10, v0

    move/from16 v0, p1

    float-to-double v12, v0

    move/from16 v0, p2

    float-to-double v14, v0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v21}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    goto/16 :goto_74

    .line 645
    .end local v4    # "cx":D
    .end local v6    # "cy":D
    .end local v18    # "eta0":D
    .end local v20    # "sweep":D
    .end local v34    # "eta1":D
    .end local v44    # "tcx":D
    :cond_127
    add-double v4, v50, v40

    .line 646
    .restart local v4    # "cx":D
    sub-double v6, v56, v38

    .restart local v6    # "cy":D
    goto :goto_d4

    .line 654
    .restart local v18    # "eta0":D
    .restart local v20    # "sweep":D
    .restart local v34    # "eta1":D
    :cond_12c
    const/4 v2, 0x0

    goto :goto_ed

    .line 658
    :cond_12e
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double v20, v20, v2

    goto :goto_fe
.end method

.method public static nodesToPath([Landroid/support/graphics/drawable/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .registers 7
    .param p0, "node"    # [Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 319
    const/4 v3, 0x6

    new-array v0, v3, [F

    .line 320
    .local v0, "current":[F
    const/16 v2, 0x6d

    .line 321
    .local v2, "previousCommand":C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v3, p0

    if-ge v1, v3, :cond_1b

    .line 322
    aget-object v3, p0, v1

    iget-char v3, v3, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mType:C

    aget-object v4, p0, v1

    iget-object v4, v4, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mParams:[F

    invoke-static {p1, v0, v2, v3, v4}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    .line 323
    aget-object v3, p0, v1

    iget-char v2, v3, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mType:C

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 325
    :cond_1b
    return-void
.end method


# virtual methods
.method public interpolatePathDataNode(Landroid/support/graphics/drawable/PathParser$PathDataNode;Landroid/support/graphics/drawable/PathParser$PathDataNode;F)V
    .registers 8
    .param p1, "nodeFrom"    # Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .param p2, "nodeTo"    # Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .param p3, "fraction"    # F

    .prologue
    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mParams:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    .line 339
    iget-object v1, p0, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mParams:[F

    iget-object v2, p1, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mParams:[F

    aget v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float/2addr v2, v3

    iget-object v3, p2, Landroid/support/graphics/drawable/PathParser$PathDataNode;->mParams:[F

    aget v3, v3, v0

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 342
    :cond_1b
    return-void
.end method
