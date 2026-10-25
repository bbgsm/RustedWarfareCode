package com.corrodinggames.rts.appFramework;

import android.app.Dialog;
import android.view.View;
import android.widget.Spinner;
import com.corrodinggames.rts.game.p352;
import com.corrodinggames.rts.gameFramework.k1104;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class fb140 implements View.OnClickListener {
    final Spinner a;
    final p352 b;
    final Spinner c;
    final Spinner d;
    final Spinner e;
    final Spinner f;
    final Dialog g;
    final MultiplayerBattleroomActivity h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fb140(MultiplayerBattleroomActivity multiplayerBattleroomActivity, Spinner spinner, p352 p352Var, Spinner spinner2, Spinner spinner3, Spinner spinner4, Spinner spinner5, Dialog dialog) {
        this.h = multiplayerBattleroomActivity;
        this.a = spinner;
        this.b = p352Var;
        this.c = spinner2;
        this.d = spinner3;
        this.e = spinner4;
        this.f = spinner5;
        this.g = dialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        k1104 app = k1104.t();

        int aiDifficulty = ga166.a(this.a, -99);
        k1104.d("newAiDifficultyValue:" + String.valueOf(aiDifficulty));
        if (app.bU.D) {
            if (aiDifficulty == -99) {
                this.b.A = null;
            } else {
                this.b.A = Integer.valueOf(aiDifficulty);
            }
        }

        int startingUnits = ga166.a(this.c, -99);
        k1104.d("startingUnits:" + this.c);
        if (app.bU.D) {
            if (startingUnits == -99) {
                this.b.B = null;
            } else {
                this.b.B = Integer.valueOf(startingUnits);
            }
        }

        int playerColor = ga166.a(this.d, -99);
        k1104.d("newPlayerColorValue:" + String.valueOf(playerColor));
        if (app.bU.D) {
            if (playerColor == -99) {
                this.b.D = null;
            } else {
                this.b.D = Integer.valueOf(playerColor);
            }
        }

        int side = ga166.a(this.e, 0);
        boolean sideInvalid;
        if (side == -3 || side > p352.c - 1) {
            side = -3;
            sideInvalid = true;
        } else {
            if (side < 0) {
                side = 0;
            }
            if (side > p352.c - 1) {
                side = p352.c - 1;
            }
            sideInvalid = false;
        }

        int fValue = ga166.a(this.f, 0);

        int team;
        boolean modFlag;
        int t = sideInvalid ? -3 : fValue;
        if (t == 0) {
            team = side % 2;
            modFlag = true;
        } else if (t == -1) {
            team = -1;
            modFlag = false;
        } else {
            team = t - 1;
            modFlag = false;
        }

        boolean canChange;
        if (team == -1) {
            canChange = false;
        } else if (this.b.s == team) {
            canChange = false;
        } else if (app.bU.D) {
            this.b.s = team;
            canChange = false;
        } else if (app.bU.I || app.bU.A == this.b) {
            canChange = true;
        } else {
            k1104.a("row.setOnClickListener", "Clicked but not server or proxy controller");
            canChange = false;
        }

        if (this.b.l != side && side != -1) {
            if (app.bU.D) {
                app.bU.a(this.b, side);
            } else if (app.bU.I || app.bU.A == this.b) {
                int moveTarget = modFlag ? -1 : team;
                String suffix = " " + moveTarget;
                if (!app.bU.I && app.bU.A == this.b) {
                    app.bU.i("-self_move " + (side + 1) + suffix);
                } else {
                    app.bU.i("-move " + (this.b.l + 1) + " " + (side + 1) + suffix);
                }
                canChange = false;
            } else {
                k1104.a("row.setOnClickListener", "Clicked but not server or proxy controller");
            }
        }

        if (canChange) {
            if (modFlag) {
                app.bU.b(this.b, -1);
            } else {
                app.bU.b(this.b, team);
            }
        }
        app.bU.b();
        app.bU.p();
        this.h.updatePlayerList();
        this.g.dismiss();
    }
}
