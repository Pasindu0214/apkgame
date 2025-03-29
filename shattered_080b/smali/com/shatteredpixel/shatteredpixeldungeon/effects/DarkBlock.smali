.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/DarkBlock;
.super Lcom/watabou/noosa/Gizmo;
.source "DarkBlock.java"


# instance fields
.field public target:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Gizmo;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/DarkBlock;->target:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    return-void
.end method


# virtual methods
.method public update()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/DarkBlock;->target:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->brightness(F)V

    return-void
.end method
