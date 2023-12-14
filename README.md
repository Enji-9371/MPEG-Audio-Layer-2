# MPEG-Audio-Layer-2
This repository contains the implementation of the MPEG audio Layer 2 codec, encompassing both the encoder and decoder modules. The project is structured into two main sections: MPEG Audio Encoder Layer 2 and MPEG Audio Decoder Layer 2.

Project Overview
This project aims to implement the MPEG Audio Layer 2 codec, consisting of two main components: the MPEG Audio Encoder Layer 2 and the MPEG Audio Decoder Layer 2. The encoder involves reading PCM-coded digital audio from a standard Windows WAV file, applying time-to-frequency mapping and filter bank, downsampling, psychoacoustic modeling, and allocation/coding. The decoder interprets MPEG2 data frames, restores quantized spectral components, and reconstructs the time-domain audio signal.

Required Tasks
I. MPEG Audio Encoder Layer 2
Read PCM-coded audio from a Windows WAV file.
Design time-to-frequency mapping and filter bank, creating thirty-two equally spaced frequency sub-bands.
Use a downsampler to reduce data for each sub-band while maintaining the overall data amount.
Apply a psychoacoustic model with a 1024-point FFT to identify unnecessary signal components.
The Allocation and coding block utilizes psychoacoustic model data for encoding sub-band signals.
II. MPEG Audio Decoder Layer 2
Design a decoder to restore quantized spectral components of the signal.
Reconstruct the time-domain representation of the audio signal from its frequency representation.
III. Plotting
Provide the following plots:

Spectral view of input audio signal
Spectral view after Filterbank
Spectral view after Psychoacoustic model
Spectral view of the reconstructed audio signal
Performance Measures
Calculate Compression Ratio (CR) using the formula CR = (Original Signal Size) / (Compressed Signal Size).

Evaluation Test
Objective and subjective evaluation:

Objective: Performance on the ten mentioned tasks, graded from 0 to 4.
Subjective: Mean Opinion Score (5 to 1) based on audience perception of audio quality.
