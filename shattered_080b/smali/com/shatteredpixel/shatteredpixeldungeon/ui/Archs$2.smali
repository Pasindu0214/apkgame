.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs$2;
.super Lcom/watabou/noosa/SkinnedBlock;
.source "Archs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->createChildren()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;FFLjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcom/watabou/noosa/SkinnedBlock;-><init>(FFLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public script()Lcom/watabou/noosa/NoosaScript;
    .locals 1

    .line 1
    invoke-static {}, Lcom/watabou/noosa/NoosaScriptNoLighting;->get()Lcom/watabou/noosa/NoosaScriptNoLighting;

    move-result-object v0

    return-object v0
.end method
